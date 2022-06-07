import 'package:flutter/material.dart';
import 'package:news_app/core/response.dart';
import 'package:news_app/theme/custom_theme.dart';
import '../model/article.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _MainPageState();
}

String _mainHaber =
    "https://w7.pngwing.com/pngs/944/233/png-transparent-newspaper-computer-icons-world-news-newspaper-display-advertising-news-article-newspaper-extra.png";

class _MainPageState extends State<TodayPage> with TickerProviderStateMixin {
  List<ArticleModel> articles = <ArticleModel>[];

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: appBar(
        title: Padding(
          padding: EdgeInsets.all(AppPadding.padding),
          child: AppTheme.todayTitle,
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.38,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: articles.length,
                  shrinkWrap: true,
                  itemExtent: 410,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 10,
                      margin: AppTheme.marginAllApp,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(children: [
                        Image.network(
                          articles[index].urlToImage!,
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.23,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 80,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(articles[index].title ?? "",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(articles[index].author ?? "",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                const Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.chevron_right)),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    );
                  }),
            ),
            SizedBox(
              child: TabBar(
                  indicatorColor: Colors.white,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  labelColor: Colors.red.shade600,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: const [
                    Text("News&politcs"),
                    Text("Sports"),
                    Text("Health"),
                    Text("Newspaper")
                  ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.38,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: articles.length,
                  shrinkWrap: true,
                  itemExtent: 270,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 10,
                      margin: AppTheme.marginAllApp,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(children: [
                        Image.network(
                          articles[index].urlToImage!,
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.23,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 80,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(articles[index].title ?? "",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(articles[index].author ?? "",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                const Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.bookmark_border)),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
