import 'package:flutter/material.dart';
import 'package:scroll/InboxPage.dart';
import 'package:scroll/InboxPage.dart';

class DetailPage extends StatefulWidget {
  SuperHero _superHero = SuperHero("", "", "");
  DetailPage(SuperHero superHero) {
    _superHero = superHero;
  }

  @override
  State<StatefulWidget> createState() => _detailPageState();
}

class _detailPageState extends State<DetailPage> {
  SuperHero _superHero = SuperHero("", "", "");
  DetailPage(SuperHero superHero) {
    _superHero = superHero;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_superHero.name),
      ),
      body: Center(
        child: Image.asset(_superHero.image),
      ),
    );
  }
}
