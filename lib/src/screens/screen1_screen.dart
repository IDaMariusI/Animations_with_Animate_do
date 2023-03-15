import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen1Screen extends StatelessWidget {
  const Screen1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animate_do'),
        actions: <Widget>[
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const FaIcon(FontAwesomeIcons.play),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.new_releases, color: Colors.blue, size: 40),
            const Text(
              'Title',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
            ),
            const Text(
              "I'm a small text",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Container(
              color: Colors.blue,
              height: 2,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
