import 'package:flutter/material.dart';

import 'httpExamplePage.dart';

void main() {
  runApp(HttpExampleApp());
  
}

class HttpExampleApp extends StatelessWidget {
  const HttpExampleApp({Key key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HttpExamplePage(),
    );
  }
}