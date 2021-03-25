import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy',
      debugShowCheckedModeBanner: false,      
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

