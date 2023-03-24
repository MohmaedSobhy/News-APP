import 'package:http/http.dart';

class API {
  Future<Response> getMethod({required String url}) async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw "Check Your URL ${response.statusCode}";
    }
  }

  bool checkData(dynamic data) {
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
}
