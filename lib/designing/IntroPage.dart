import 'package:flutter/material.dart';
import 'package:scroll/main.dart';
import 'package:scroll/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clonegram"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 229, 212, 232),
                            width: 3)),
                    suffixText: "enter your name",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {},
                    )),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyHomePage(nameController.text.toString()),
                      ));
                },
                child: Text("next"))
          ],
        ),
      ),
    );
  }
}
