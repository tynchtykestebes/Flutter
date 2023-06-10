import 'package:flutter/material.dart';

class Tourist {
  Tourist({
    required this.image,
    required this.id,
    required this.name,
    required this.surname,
    required this.age,
    this.gender,
    required this.country,
    required this.level,
    required this.email,
    required this.phone,
    this.status
  });

  final Image image;
  final int id;
  final String name;
  final String surname;
  int age;
  final String? gender;
  final String country;
  String level;
  final String email;
  String phone;
  String? status;
}

final tynchtyk = Tourist(
  image: Image.network('https://cdn-icons-png.flaticon.com/512/4439/4439947.png'),
  id: 9961,
  name: 'Tynchtyk',
  surname: 'Estebes',
  age: 31,
  country: 'Kyrgyzstan',
  level: 'Medium',
  email: 'tynchtyk@gmail.com',
  phone: '+996779208026',
  gender: 'male');

final jon = Tourist(
  image: Image.network('https://png.pngtree.com/png-vector/20190525/ourmid/pngtree-man-avatar-icon-professional-man-character-png-image_1055448.jpg'),
  id: 441,
  name: 'Jon',
  surname: 'Derricott',
  age: 55,
  country: 'Great Britain',
  level: 'Advanced',
  email: 'jon@gmail.com',
  phone: '+441237654321',
  status: 'Project Manager');

final kasia = Tourist(
  image: Image.network('https://cdn-icons-png.flaticon.com/512/3231/3231499.png'),
  id: 481,
  name: 'Kasia',
  surname: 'Kowalczyk',
  age: 36,
  country: 'Poland',
  level: 'Beginner',
  email: 'kasia@gmail.com',
  phone: '+484561237890');