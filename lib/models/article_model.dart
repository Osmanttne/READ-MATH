import 'article_content.dart';

class ArticleModel{
  final String heading;
  final String url;
  final List<ArticleContent> description;
  ArticleModel(this.heading, this.url, this.description);
}
