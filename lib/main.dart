import 'package:flutter/material.dart';
import 'package:read_math/articles_for_Read_Math.dart';
import 'package:read_math/article_list.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple
        ),
      home: ArticleList(Articles.FetchAll())
    );
  }
}