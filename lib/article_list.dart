import 'package:flutter/material.dart';
import 'package:read_math/article_detail.dart';
import 'package:read_math/styles.dart';
import 'package:read_math/models/article_model.dart';
import 'package:read_math/navbar.dart';

class ArticleList extends StatelessWidget{
  final List<ArticleModel> articles;
  const ArticleList(this.articles);

  Widget _itemThumbnail(ArticleModel thumbnailLocation){
    return Container(
      constraints: const BoxConstraints.tightFor(width: 100),
      child: Image.network(thumbnailLocation.url, fit: BoxFit.fitWidth)
    );
  }

  Widget _itemTitle(ArticleModel titleLocation){
    return Text(titleLocation.heading, style: Styles.textDefault);
  }

  Widget _locationTile(BuildContext context, int index){
    final art = articles[index];
    return ListTile(
        contentPadding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        leading: _itemThumbnail(art),
        title: _itemTitle(art),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ArticleDetail(art)
          ));
        }
    );
  }

  @override
  Widget build(BuildContext context){
    return(Scaffold(
        appBar: AppBar(
          title: const Text("Articles", style: Styles.appbarStyle)
        ),
        drawer: const NavBar(),
        body: ListView.builder(
            itemCount: articles.length,
            itemBuilder: _locationTile
        )
      )
    );
  }

}
