class NewsModel {
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publshedAt;
  String content;
  String articleUrl;
  NewsModel(
      {required this.articleUrl,
      required this.title,
      required this.description,
      required this.content,
      required this.publshedAt,
      required this.author,
      required this.urlToImage});

  factory NewsModel.formJson(dynamic element) {
    return NewsModel(
        author: element['author'],
        description: element['description'],
        urlToImage: element['urlToImage'],
        publshedAt: DateTime.parse(element['publishedAt']),
        content: element["content"],
        articleUrl: element["url"],
        title: element['title']);
  }
}
