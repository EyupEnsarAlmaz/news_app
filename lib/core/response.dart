import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news_app/model/article.dart';

import '../model/news.dart';

class NewsService {
  static NewsService _singleton = NewsService._internal();
  NewsService._internal();

  factory NewsService() {
    return _singleton;
  }

  static Future<List<Articles>?> getNews() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=tr&category=business&apiKey=23883a8fcdc34772a89045230260314c");

    final response = await http.get(url);

    if (response.body.isNotEmpty) {
      final responseJson = json.decode(response.body);
      News news = News.fromJson(responseJson);
      return news.articles;
    }
    return null;
  }
}
