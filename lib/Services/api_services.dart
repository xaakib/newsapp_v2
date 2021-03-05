import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp_v2/models/articles.dart';

class ApiServices {
  String everthing =
      "https://newsapi.org/v2/everything?q=bitcoin&apiKey=c5d0829c93794ce3a717ad6f55787aaa";
  String url =
      "https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=c5d0829c93794ce3a717ad6f55787aaa";

  Future<News> getNews() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      News res = News.fromJson(json.decode(jsonResponse));
      print(res.status);
      return res;
    } else {
      print("failed");
    }
  }

  Future<News> getEverything() async {
    var response = await http.get(everthing);
    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      News res = News.fromJson(json.decode(jsonResponse));
      print(res.status);
      return res;
    } else {
      print("failed");
    }
  }
}
