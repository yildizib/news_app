import 'package:get/get.dart';

import '../article_model.dart';
import '../../configs/provider_config.dart';

class ArticleProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Article.fromJson(map);
    httpClient.baseUrl = ProviderConfig.apiUrl;
  }

  Future<Response<Article>> getArticle(int id) async =>
      await get('article/$id');
  Future<Response<Article>> postArticle(Article article) async =>
      await post('article', article);
  Future<Response> deleteArticle(int id) async => await delete('article/$id');
}
