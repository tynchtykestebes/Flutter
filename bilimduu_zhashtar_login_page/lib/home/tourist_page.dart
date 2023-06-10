import 'package:bilimduu_zhashtar_login_page/model.dart';
import 'package:flutter/material.dart';

class TouristPage extends StatelessWidget {
  const TouristPage({super.key, required this.tourist});
  final Tourist tourist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Tourist Page',
      style: TextStyle(fontWeight: FontWeight.bold),)),),
      body: Center(
        child: Column(children: [
          Text('Dear, ${tourist.name}, welcome to Kyrgyzstan!',
          style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 20,),
          CircleAvatar(radius: 100,
          child: tourist.image,),
          const SizedBox(height: 20,),
          Text('ID: ${tourist.id.toString()}'),
          Text('Name: ${tourist.name}'),
          Text('Surname: ${tourist.surname}'),
          Text('Age: ${tourist.age.toString()}'),
          Text('Gender: ${tourist.gender ?? '-'}'),
          Text('Country: ${tourist.country}'),
          Text('Level: ${tourist.level}'),
          Text('Email: ${tourist.email}'),
          Text('Phone: ${tourist.phone}'),
          Text('Status: ${tourist.status ?? '-'}'),
        ],),
      ),
    );
  }
}