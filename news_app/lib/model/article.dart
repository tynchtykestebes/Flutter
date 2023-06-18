import 'package:news_app/model/source.dart';

class Article{
  Article(
  {required this.source,
  this.author,
  required this.title,
  this.description,
  required this.url,
  this.urlToImage,
  required this.publishedAt,
  this.content});

  final Source source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  factory Article.fromJson(Map<String, dynamic>json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );  
  }
}