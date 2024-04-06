import 'package:flutter/material.dart';
import 'package:scroll/layout%20and%20data/functions.dart';

import 'package:scroll/designing/SplashScreen.dart';
import 'package:scroll/designing/IntroPage.dart';
import 'package:scroll/pages/DiscoverPage.dart';
import 'package:scroll/pages/homepage.dart';
import 'package:scroll/InboxPage.dart';
import 'ProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ProfilePage(), //const MyHomePage(title: 'Clonegram'),
    );
  }
}
