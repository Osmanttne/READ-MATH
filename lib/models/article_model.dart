import 'article_content.dart';

class ArticleModel{
  final String heading;
  final String url;
  final List<ArticleContent> description;
  final String downloadLink;
  ArticleModel(this.heading, this.url, this.description, this.downloadLink);
}
