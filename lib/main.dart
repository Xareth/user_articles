import 'package:flutter/material.dart';
import 'package:user_articles/features/home/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// http://my-json-server.typicode.com/adamsmaka/json-demo/users
// http://my-json-server.typicode.com/adamsmaka/json-demo/articles