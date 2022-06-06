import 'package:flutter/material.dart';
import 'package:news_app/theme/custom_theme.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
            title: Padding(
      padding: EdgeInsets.all(AppPadding.padding),
      child: AppTheme.newsTitle,
    )));
  }
}
