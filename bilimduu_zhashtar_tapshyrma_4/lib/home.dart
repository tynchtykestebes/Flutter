import 'package:bilimduu_zhashtar_tapshyrma_4/secondpage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNumber;
  String? emailAddress;
  void submit() {
    if(phoneNumber != null && emailAddress != null) {
      //&& жана дегенди тушундурот
      if(phoneNumber!.isEmpty || emailAddress!.isEmpty) {
      //|| же дегенди тушундурот
        isActive = false;
      }else{
        isActive = true;
      }
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 108, 92, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        centerTitle: true,
        title: const Text('Тапшырма 4',
        style: TextStyle(fontSize: 18,
        color: Color.fromRGBO(0, 0, 0, 1)),),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/images/Tynchtyk.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,),
            ),
            const Text('Tynchtyk Estebes', style: TextStyle(fontSize: 48,
            color: Color.fromRGBO(247, 249, 249, 1),
            fontFamily: 'Pacifico-Regular'),),
            const Text('Flutter Developer', style: TextStyle(fontSize: 28,
            color: Color.fromRGBO(247, 249, 249, 1)),),
            const Divider(color: Colors.white,
            thickness: 2,
            indent: 57,
            endIndent: 47.5,),
            const SizedBox(height: 23.5,),
            Container(
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: TextFormField(style: const TextStyle(fontSize: 22,
              color: Color.fromRGBO(5, 108, 92, 1),
              fontWeight: FontWeight.w600,),
              onChanged: (String? value) {
                phoneNumber = value;
                submit();
              },
              decoration: const InputDecoration(
                hintText: 'Write your phone number',
                hintStyle: TextStyle(fontSize: 18),
                focusColor: Colors.white,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Icon(Icons.local_phone_outlined,
                  color: Color.fromRGBO(5, 108, 92, 1),),
                )
              ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
             Container(
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: TextFormField(style: const TextStyle(fontSize: 22,
              color: Color.fromRGBO(5, 108, 92, 1),
              fontWeight: FontWeight.w600,),
              onChanged: (String? value) {
                emailAddress = value;
                submit();
              },
              decoration: const InputDecoration(
                hintText: 'Write your e-mail address',
                hintStyle: TextStyle(fontSize: 18),
                focusColor: Colors.white,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Icon(Icons.email_outlined,
                  color: Color.fromRGBO(5, 108, 92, 1),),
                )
              ),
            ),),
            const SizedBox(height: 24,),
            SizedBox(
              width: 100,
              height: 30,
              child: ElevatedButton(
                onPressed: isActive ? () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
                } : null,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('Submit',
                style: TextStyle(fontSize: 20,
                color: Colors.black),)),
            )
          ],),
        ),
    );
  }
}