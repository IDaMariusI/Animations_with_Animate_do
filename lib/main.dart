import 'package:flutter/material.dart';

import 'package:animate_do_app/src/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animate_do',
      home: Screen1Screen(),
    );
  }
}
