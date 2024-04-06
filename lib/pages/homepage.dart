import 'package:flutter/material.dart';

import 'package:scroll/designing/IntroPage.dart';
import 'package:scroll/designing/SplashScreen.dart';
import 'package:scroll/layout%20and%20data/variables.dart';
import 'package:scroll/layout%20and%20data/functions.dart';

class MyHomePage extends StatefulWidget {
  var namefromintro = "";
  MyHomePage(this.namefromintro);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String name = widget.namefromintro;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Welcome,$name"),
        ),
        body: Container(
          child: Column(
            children: [
              catItems(),
              ContentV(),
              StoriesV(),
              OptionsV(),
            ],
          ),
        ));
  }
}
