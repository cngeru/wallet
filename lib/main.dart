import 'package:card_manager/screens/wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Wrapper(),
    );
  }
}
