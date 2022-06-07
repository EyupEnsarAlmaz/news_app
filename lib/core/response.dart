import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/article.dart';

class News {
  String mainHaber =
      "https://w7.pngwing.com/pngs/944/233/png-transparent-newspaper-computer-icons-world-news-newspaper-display-advertising-news-article-newspaper-extra.png";
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=tr&category=business&apiKey=23883a8fcdc34772a89045230260314c");
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }
  }
}
