import 'package:flutter/material.dart';
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/model/article.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteButton extends StatelessWidget {
  const WebsiteButton({
    super.key, required this.article,
  });
  final Article article;

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(article.url);
    return MaterialButton(
    color: AppBarStyle.bgc,
    onPressed: ()async{
      if (!await launchUrl(url)){
        throw Exception('Could not launch $url');
      }
    }, child: const Text('Go to the website to read the article'),);
  }
}