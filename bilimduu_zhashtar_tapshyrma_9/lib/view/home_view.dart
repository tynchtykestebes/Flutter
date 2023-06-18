import 'package:bilimduu_zhashtar_tapshyrma_9/constants/api_const.dart';
import 'package:bilimduu_zhashtar_tapshyrma_9/constants/app_colors.dart';
import 'package:bilimduu_zhashtar_tapshyrma_9/constants/app_texts_styles.dart';
import 'package:bilimduu_zhashtar_tapshyrma_9/model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

const List cities = <String>[
  'Bishkek',
  'Osh',
  'Jalal-Abad',
  'Karakol',
  'Naryn',
  'Talas',
  'Batken',
  'Tokmok'
];

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  Weather? weather;
  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.always &&
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      await Future.delayed(const Duration(seconds: 1));
      final response = await dio.get(ApiConst.weatherAddress(
          lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    } else {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      await Future.delayed(const Duration(seconds: 1));
      final response = await dio.get(ApiConst.weatherAddress(
          lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    }
  }

  Future<void> fetchData([String? url]) async {
    Dio dio = Dio();
    await Future.delayed(const Duration(seconds: 1));
    final response = await dio.get(ApiConst.weatherUrl(url ?? 'bishkek'));
    if (response.statusCode == 200) {
      weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.appBgc,
          elevation: 0,
          title: const Text(
            'Тапшырма 9',
            style: AppTextsStyles.appBarText,
          ),
        ),
        body: Center(
          child: weather == null
              ? const CircularProgressIndicator()
              : Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage('assets/images/bcgimageweatherapp.jpg')),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () async {
                                await getLocation();
                              },
                              icon: const Icon(Icons.near_me),
                              color: AppColors.appBgc,
                            ),
                            IconButton(
                              onPressed: () async {
                                showBottom();
                              },
                              icon: const Icon(Icons.location_city),
                              color: AppColors.appBgc,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                    '${(weather!.temp - 273.15).toInt()}',
                                    style: AppTextsStyles.numberStyle),
                              ),
                              Image.network(ApiConst.getIcon(weather!.icon, 4)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FittedBox(
                            child: Text(
                              weather!.description.replaceAll(' ', '\n'),
                              style: AppTextsStyles.mainTextStyle,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: FittedBox(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              weather!.name,
                              style: AppTextsStyles.mainTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ));
  }

  void showBottom() async {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 200,
            color: Colors.blue,
            child: ListView.builder(
                itemCount: cities.length,
                itemBuilder: (context, index) {
                  final city = cities[index];
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        setState(() {
                          weather == null;
                        });
                        fetchData(city);
                        Navigator.pop(context);
                      },
                      title: Text('$city'),
                    ),
                  );
                }));
      },
    );
  }
}
