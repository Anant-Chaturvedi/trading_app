import 'package:flutter/material.dart';
import 'package:trading_app/markets.dart';
import 'package:trading_app/tab_bar.dart';

import 'home_screen.dart';
import 'tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen1(),
    );
  }
}
