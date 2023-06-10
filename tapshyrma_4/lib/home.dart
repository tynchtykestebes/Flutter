import 'package:flutter/material.dart';
import 'package:tapshyrma_4/secondpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNumber;
  String? emailAddress;
  void start(){
    if(phoneNumber != null && emailAddress != null) {
      if(phoneNumber!.isEmpty || emailAddress!.isEmpty) {
        isActive = false;        
      }else{
        isActive = true;
      }
      setState(() {        
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        title: const Center(child: Text("Тапшырма 4",
        style: TextStyle(
          fontSize: 18,
          fontFamily: "Roboto-Regular",
          color: Color(0xff000000,)
        ),)),
        elevation: 0,
      ),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset("assets/images/Tynchtyk.png",
              width: 150,
              height: 150,
              fit: BoxFit.cover,),
            ),
            const Text("Tynchtyk Estebes uulu",
            style: TextStyle(
              fontSize: 32,
              fontFamily: "Pacifico-Regular",
              color: Color(0xffF7F9F9)
            ),),
            const Text("Flutter Developer",
            style: TextStyle(
              fontSize: 26,
              fontFamily: "Roboto-Regular",
              color: Color(0xffF7F9F9),
            ),),
            const Divider(
              height: 5,
              thickness: 5,
              indent: 57,
              endIndent: 47.5,
              color: Color(0xffFFFFFF),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 53,
              color: const Color(0xffFFFFFF),
              child: TextFormField(
                onChanged: (String? value) {
                  phoneNumber = value;
                  start();
                  print("value: $value");
                  print("phoneNumber: $phoneNumber");
                },
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(Icons.phone_outlined, color: Color(0xff056C5C),),
                  ),
                  labelText: "Enter your phone number",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 53,
              color: const Color(0xffFFFFFF),
              child: TextFormField(
                onChanged: (String? value) {
                  emailAddress = value;
                  start();
                  print("value: $value");
                  print("emailAddress: $emailAddress");
                },
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(Icons.email_outlined, color: Color(0xff056C5C),),
                  ),
                  labelText: "Enter your e-mail address",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
            onPressed: isActive ? () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
            } : null,
            child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}