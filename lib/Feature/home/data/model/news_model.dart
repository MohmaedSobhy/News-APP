class NewModel {
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publshedAt;
  String content;
  String articleUrl;
  NewModel(
      {required this.articleUrl,
      required this.title,
      required this.description,
      required this.content,
      required this.publshedAt,
      required this.author,
      required this.urlToImage});

  factory NewModel.formJson(dynamic element) {
    return NewModel(
        author: element['author'],
        description: element['description'],
        urlToImage: element['urlToImage'],
        publshedAt: DateTime.parse(element['publishedAt']),
        content: element["content"],
        articleUrl: element["url"],
        title: element['title']);
  }
}
