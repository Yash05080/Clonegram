import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scroll/layout%20and%20data/functions.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _profilePageState();
}

class _profilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.deepOrange,
            child: Text("profile info"),
          ),
          Row(
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                child: Text("highluights"),
              )
            ],
          ),
          Container(
            height: 425,
            color: Colors.amber,
            child: Text("content"),
          ),
          OptionsV(),
        ],
      ),
    );
  }
}
