import 'package:flutter/material.dart';
import 'package:shareddit/pages/splash.dart';

void main() {
  runApp(Shareddit());
}

class Shareddit extends StatefulWidget {
  @override
  _SharedditState createState() => _SharedditState();
}

class _SharedditState extends State<Shareddit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}