import 'package:scroll/inboxdetails.dart';
import 'package:scroll/layout%20and%20data/variables.dart';
import 'package:scroll/layout%20and%20data/functions.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _inboxPage();
}

class SuperHero {
  final String image;
  String name;
  String description;
  SuperHero(this.image, this.name, this.description) {}
}

class _inboxPage extends State<InboxPage> {
  List<SuperHero> superHeros = [];
  _inboxPage() {
    superHeros.add(new SuperHero("assets/images/nature.jpg", "mummy",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/sky.jpg", "papa",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/swan.jpg", "raghav",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/lamp.jpg", "tarun",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/ancient.jpg", "piyush",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/download.jpeg", "harika",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/nature.jpg", "vanisha",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/sky.jpg", "kanishk",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
    superHeros.add(new SuperHero("assets/images/swan.jpg", "dhruv",
        "an aspiring biologist , loves nature and have a relly strong sense of protecting the plants"));
  }

  Widget MySuperCell(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(superHeros[index])));
      },
      child: Card(
        margin: EdgeInsets.all(16),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 135, 0, 147),
                child: Container(
                  width: 52,
                  height: 52,
                  child: ClipOval(
                    child: Image.asset(
                      superHeros[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(superHeros[index].name),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 8,
              child: ListView.builder(
                itemCount: superHeros.length,
                itemBuilder: (context, index) => MySuperCell(context, index),
              )),
          OptionsV(),
        ],
      ),
    );
  }
}
