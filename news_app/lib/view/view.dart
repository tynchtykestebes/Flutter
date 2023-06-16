import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/model/countries_domain.dart';
import 'package:news_app/model/top_news_model.dart';
import 'package:news_app/services/fetch_service.dart';
import 'package:news_app/view/detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future <void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {});
    topNews = await TopNewsRepo().fetchTopNews(domain);
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    fetchNews();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarStyle.bgc,
        title: const Text('News Aggregator', style: AppBarStyle.textStyle,),
        actions: [
          PopupMenuButton<Country>(
            onSelected: (Country item)async{
              await fetchNews(item.domain);
            },
            itemBuilder: (BuildContext context){
              return countriesDomains.map((e) => PopupMenuItem<Country>(value: e, child: Text(e.name))).toList();
            }),
  ],),
      body: topNews == null ? const Center(child: CircularProgressIndicator()):ListView.builder(
        itemCount: topNews!.article.length,
        itemBuilder: (context, index){
          final news = topNews!.article[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(article: news)));
            },
            child: Card(
              color: Colors.white,
              child: Row(children: [
                Expanded(
                  flex: 3,
                  child: CachedNetworkImage(
        imageUrl: news.urlToImage.toString(),
        placeholder: (context, url) =>const CircularProgressIndicator(),
        errorWidget: (context, url, error) => Image.asset('assets/news.jpg'),
     ),
                  //Image.network(news.urlToImage ?? ApiConst.newsImage),
                  ),
                  const SizedBox(width: 5,),
                Expanded(
                  flex: 5,
                  child: Text(news.title)),
              ],),
            ),
          );
      }),
    );
  }
}