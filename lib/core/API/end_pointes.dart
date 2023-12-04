abstract class EndPoint {
  static const String apiKey = "1ad704bc419e4be5909e5fc3495a393a";
  static String baseUrl = "https://newsapi.org/v2/top-headlines";
  static String allNews = "$baseUrl?country=us&apiKey=$apiKey";
  static String allNewsByCategory = "$baseUrl?country=us&apiKey=$apiKey";
  //category=$category
}
