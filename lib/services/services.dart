import 'package:dio/dio.dart';
import 'package:news_app/model/articles_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=ebc491c4c38940a2a80fdf0e805f34f3&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleslist = [];

      for (var a in articles) {
        ArticleModel ar = ArticleModel.fromJson(a);
        articleslist.add(ar);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
    //print(response);
  }
}
