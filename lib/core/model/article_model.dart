class ArticleModel {
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publshedAt;
  String content;
  String articleUrl;
  ArticleModel(
      {required this.articleUrl,
      required this.title,
      required this.description,
      required this.content,
      required this.publshedAt,
      required this.author,
      required this.urlToImage});

  factory ArticleModel.formJson(dynamic element) {
    return ArticleModel(
        author: element['author'],
        description: element['description'],
        urlToImage: element['urlToImage'],
        publshedAt: DateTime.parse(element['publishedAt']),
        content: element["content"],
        articleUrl: element["url"],
        title: element['title']);
  }
}
