import 'package:flutter/material.dart';
import 'package:project1/ui/ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project1',
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

