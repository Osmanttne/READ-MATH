import 'package:flutter/material.dart';
import 'package:read_math/article_detail.dart';
import 'package:read_math/styles.dart';
import 'package:read_math/models/article_model.dart';
import 'package:read_math/navbar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArticleList extends StatelessWidget {
  final List<ArticleModel> articles;

  const ArticleList(this.articles);

  Widget _itemThumbnail(ArticleModel thumbnailLocation) {
    return Container(
        constraints: const BoxConstraints.tightFor(width: 110),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
                imageUrl: thumbnailLocation.url,
                placeholder: (context, url) =>
                const Center(child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator()
                )),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fitWidth
            )
        ));
  }

  Widget _itemTitle(ArticleModel titleLocation) {
    return Text(titleLocation.heading, style: Styles.textDefault);
  }

  Widget _locationTile(BuildContext context, int index) {
    final art = articles[index];
    return Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 15),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ArticleDetail(art)
                ));
          },
          child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                  child: _itemThumbnail(art),
                ),
                Flexible(
                  child: _itemTitle(art),
                )
              ]
          ),
        ));
  }
    @override
    Widget build(BuildContext context) {
      return (Scaffold(
          appBar: AppBar(
              title: const Text("Makaleler", style: Styles.appbarStyle)
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
