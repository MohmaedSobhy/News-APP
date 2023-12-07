bool checkNewsData(dynamic data) {
  if (data['author'] == null ||
      data['description'] == null ||
      data['urlToImage'] == null ||
      data['publishedAt'] == null ||
      data['content'] == null ||
      data['url'] == null ||
      // ignore: unrelated_type_equality_checks

      data['title'] == null) {
    return false;
  }
  return true;
}
