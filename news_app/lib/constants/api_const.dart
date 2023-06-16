import 'package:flutter/material.dart';

class ApiConst{
  static const apiKey = '450f9b0d21194d0d942eaad6c9a14bb9';
  static String topNews([String? domain]) => 'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';
  static const newsImage = 'https://cdn.pixabay.com/photo/2015/11/06/15/13/news-1028791_960_720.jpg';
}

class AppBarStyle{
  static const textStyle = TextStyle(color: Colors.white, fontSize: 16);
  static const bgc = Color.fromRGBO(254, 87, 34, 1);
}