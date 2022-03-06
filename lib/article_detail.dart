import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'package:read_math/styles.dart';

class ArticleDetail extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleDetail(this.articleModel);

  List<Widget> _renderFacts(ArticleModel articleModel) {
    var x = <Widget>[];
    for (int i = 0; i < articleModel.description.length; i++) {
      x.add(Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(articleModel.description[i].title,
              textAlign: TextAlign.left,
              style: Styles.header
        )
      ));
      x.add(Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Text(articleModel.description[i].text,
        style: Styles.textDefault),
      ));
    }
    return x;
  }

  Widget _bannerImage(String url, double height) {
    return Container(
        constraints: BoxConstraints.tightFor(height: height),
        child: Image.network(url, fit: BoxFit.fitWidth));
  }

  List<Widget> _renderBody(BuildContext context, ArticleModel articleModel) {
    var x = <Widget>[];
    x.add(_bannerImage(articleModel.url, 200.0));
    x.addAll(_renderFacts(articleModel));
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(articleModel.heading, style: Styles.appbarStyle),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _renderBody(context, articleModel))
          )
        );
  }
}
