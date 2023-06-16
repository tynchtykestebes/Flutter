import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/components/website_button.dart';
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/model/article.dart';
import 'package:share_plus/share_plus.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final newsTime = DateFormat('d MMMM y H:m:s').format(DateTime.parse(article.publishedAt));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppBarStyle.bgc,
        title: Text(article.title,),
        actions: [IconButton(onPressed: (){
          Share.share(article.url);
        }, icon: const Icon(Icons.share))],      
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(article.author.toString()), const Icon(Icons.person),
            Text(article.title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold),),
            const Divider(color: AppBarStyle.bgc,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              const Icon(Icons.access_time),
              const SizedBox(width: 10,),
              Text(newsTime),
            ],),
            Text(article.description.toString(), textAlign: TextAlign.justify,),
            const SizedBox(height: 10,),
            Image.network(article.urlToImage.toString()),
            const SizedBox(height: 10,),
            Column(
              children: [
              Text(article.content.toString(), textAlign: TextAlign.justify),
              WebsiteButton(article: article,)
            ],)
          ],),
        ),
      ),
    );
  }
}

