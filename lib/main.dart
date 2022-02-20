import 'package:flutter/material.dart';
import 'package:ted_gcc_mobile_app/articles.dart';
import 'package:ted_gcc_mobile_app/article_list.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          

        ),
      home: ArticleList(Articles.FetchAll())
    );
  }
}