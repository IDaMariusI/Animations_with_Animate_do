import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterScreen extends StatelessWidget {
  const TwitterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1DA1F2),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: const FaIcon(FontAwesomeIcons.play),
      ),
      body: Center(
        child: ZoomOut(
          animate: false,
          from: 30,
          duration: const Duration(seconds: 1),
          child: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
