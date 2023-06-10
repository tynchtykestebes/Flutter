import 'package:bilimduu_zhashtar_login_page/home/tourist_page.dart';
import 'package:bilimduu_zhashtar_login_page/model.dart';
import 'package:flutter/material.dart';

List tourists = <Tourist>[tynchtyk, jon, kasia];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _email;

  void controlNameEmail(String name, String email) {
    int index = 0;
    for (final tourist in tourists) {
      index++;
      if (name == tourist.name && email == tourist.email) {        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TouristPage(
              tourist: tourist),),);
        break;
      } else {
        if(index == tourists.length) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Your name or email is incorret')));
        } else {
          continue;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Page',
        style: TextStyle(color: Colors.black),),),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/id/1180882238/vector/success-logo.jpg?s=612x612&w=0&k=20&c=brO28PRCR_73Oj-qVIGDzYxfDwZj17t7VrLb-JiGH2Q='))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                FlutterLogo(size: 200, style: FlutterLogoStyle.horizontal),
              ],),
              const Text('Create better together.',
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold),),
              const Text('Join our community',
              style: TextStyle(fontSize: 18),),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: TextFormField(
                  onChanged: (String value) {
                    _name = value;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter your first name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                child: TextFormField(
                  onChanged: (String value) {
                    _email = value;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter your email address',
                  ),
                ),
              ),
              TextButton(onPressed: () {
                controlNameEmail(_name!, _email!);
              }, child: const Text('Login', style: TextStyle(fontSize: 18),)),
            ],),
          ),
        ),
    );
  }
}