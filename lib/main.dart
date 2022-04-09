import 'package:flutter/material.dart';
import 'package:mini_newspaper_project/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:mini_newspaper_project/screens/login_page.dart';
import 'package:mini_newspaper_project/screens/view_news_page.dart';
import 'package:mini_newspaper_project/screens/tab_bar_screen/sport.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 0,
        )),
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/home': (context) => HomePage(),
      '/view': (context) => ViewPage(),
      '/login': (context) => LoginPage(),
      '/view': (context) => ViewPage(),
    },
  ));
}
