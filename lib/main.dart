import 'package:flutter/material.dart';

import './body.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Time Calculator'),
        ),
        body: Body(),
      ),
    );
  }
}
