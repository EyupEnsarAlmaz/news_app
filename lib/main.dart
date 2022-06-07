import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/audio_page.dart';
import 'package:news_app/screens/news_page.dart';
import 'package:news_app/screens/today_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List listPage = [
    TodayPage(),
    NewsPage(),
    AudioPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: listPage[currentIndex],
        bottomNavigationBar: bottomNavBar());
  }

  Padding bottomNavBar() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavyBar(
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: const Icon(Icons.date_range_outlined,
                    color: Colors.black),
                title: const Text(
                  "Today",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                activeColor: Colors.red,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.newspaper, color: Colors.black),
                title: const Text(
                  "News+",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                activeColor: Colors.red,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.headset_outlined, color: Colors.black),
                title: const Text("Audio",
                    style: TextStyle(color: Colors.white)),
                textAlign: TextAlign.center,
                activeColor: Colors.red,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.library_books_outlined,
                    color: Colors.black),
                title: const Text("My Page",
                    style: TextStyle(color: Colors.white)),
                textAlign: TextAlign.center,
                activeColor: Colors.red,
                inactiveColor: Colors.black),
          ],
        ),
      );
  }

}
