import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/model/top_news_model.dart';

class TopNewsRepo{
  final http.Client client = http.Client();
  Future <TopNews?> fetchTopNews(String? domain) async{
    final Uri uri = Uri.parse(ApiConst.topNews(domain));
    final http.Response response = await client.get(uri);
    if(response.statusCode == 200 || response.statusCode == 201){
      final data = jsonDecode(response.body);
      final topNews = TopNews.fromJson(data);
      return topNews;
    }
    return null;
  }
}