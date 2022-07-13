import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'markets.dart';

late Size mq;

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          height: mq.height * .075,
          activeColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Icon(
                  CupertinoIcons.arrow_right_arrow_left_circle_fill,
                  color: Colors.green,
                  size: 55,
                ),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.slider_horizontal_3)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person))
          ],
        ),
        tabBuilder: (context, index) {
          if (index == 0) {
            return CupertinoTabView(
              navigatorKey: firstTabNavKey,
              builder: (BuildContext context) => const HomeScreen(),
            );
          } else {
            return CupertinoTabView(
              navigatorKey: fourthTabNavKey,
              builder: (BuildContext context) => const MarketScreen(),
            );
          }
        });
  }
}
