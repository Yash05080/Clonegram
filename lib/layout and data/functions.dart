import 'package:flutter/material.dart';
import 'package:scroll/InboxPage.dart';
import 'package:scroll/homepage.dart';
import 'package:scroll/ProfilePage.dart';

import 'package:scroll/designing/IntroPage.dart';
import 'package:scroll/pages/DiscoverPage.dart';

class catItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
        child: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      child: Container(
                        width: 80,
                        height: 80,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/img_1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            itemCount: 10,
            scrollDirection: Axis.horizontal),
      ),
    );
  }
}

class ContentV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        color: Colors.white,
        child: ListView.builder(
            itemBuilder: (context, index) =>
                //padding: const EdgeInsets.all(8.0),
                ListTile(
                  leading: CircleAvatar(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/img_2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  title: Text("name"),
                  subtitle: Text("mobile no."),
                  trailing: Icon(Icons.delete),
                )),
      ),
    );
  }
}

class StoriesV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: Colors.blue[50],
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(51),
                  color: Colors.purple[100],
                ),
              ),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ));
  }
}

class OptionsV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.indigo,
          child: GridView.count(
            crossAxisCount: 4,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.pinkAccent,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage("yash"),
                          ));
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.pinkAccent,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DiscoverPage(),
                          ));
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.pinkAccent,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InboxPage(),
                          ));
                    },
                    child: Icon(
                      Icons.forward_to_inbox,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                  },
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.pinkAccent,
                      child: Container(
                        width: 40,
                        height: 40,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/IMG_9813.JPG',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
