import 'package:flutter/material.dart';

import 'package:scroll/pages/homepage.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:scroll/layout%20and%20data/variables.dart';
import 'package:scroll/layout%20and%20data/functions.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _myDiscoverPage();
}

class _myDiscoverPage extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Discover Page"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: MasonryGridView.builder(
                itemCount: 11,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('${imageaddress[index]}')))),
          ),
          OptionsV(),
        ],
      ),
    );
  }
}
