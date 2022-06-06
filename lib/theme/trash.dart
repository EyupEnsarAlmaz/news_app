/*Stack bottomNavBar(BuildContext context) {
    return Stack(children: [
      Container(
        height: 50,
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  bottomIcons = BottomIcons.home;
                });
              },
              child: bottomIcons == BottomIcons.home
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Row(children: const [
                        Icon(Icons.date_range_outlined, color: Colors.white),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                    )
                  : const Icon(Icons.date_range_outlined),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewsPage()),
                  );
                  bottomIcons = BottomIcons.news;
                });
              },
              child: bottomIcons == BottomIcons.news
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Row(children: const [
                        Icon(Icons.newspaper, color: Colors.white),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "News+",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                    )
                  : const Icon(Icons.newspaper),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bottomIcons = BottomIcons.audio;
                });
              },
              child: bottomIcons == BottomIcons.audio
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Row(children: const [
                        Icon(Icons.headphones_outlined, color: Colors.white),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Audio",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                    )
                  : const Icon(Icons.headphones_outlined),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bottomIcons = BottomIcons.mypage;
                });
              },
              child: bottomIcons == BottomIcons.mypage
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Row(children: const [
                        Icon(Icons.my_library_books_outlined,
                            color: Colors.white),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "MyPage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                    )
                  : const Icon(Icons.my_library_books_outlined),
            ),
          ],
        ),
      ),
    ]);
  }*/