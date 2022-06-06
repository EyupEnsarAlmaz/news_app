import 'package:flutter/material.dart';
import 'package:news_app/theme/custom_theme.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _MainPageState();
}

String _urlPath = "assets/trt.png";

class _MainPageState extends State<TodayPage> with TickerProviderStateMixin {
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
                  itemCount: 10,
                  shrinkWrap: true,
                  itemExtent: 410,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: AppTheme.marginAllApp,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              _urlPath,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                children: const [
                                  Text("TRT HABERDEYİZZ",
                                      style: TextStyle(color: Colors.white)),
                                  Text("8 minutes ago",
                                      style: TextStyle(color: Colors.white))
                                ],
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
                  itemCount: 10,
                  shrinkWrap: true,
                  itemExtent: 270,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 0,
                      margin: AppTheme.marginAllApp,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(children: [
                        Image.asset(_urlPath, fit: BoxFit.fill),
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
                          child: Column(
                            children: const [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("TRT HABERDEYİZZ",
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("TRT HABER",
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.bookmark_border)),
                            ],
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
