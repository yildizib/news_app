import 'package:get/get.dart';
import 'package:news_app/app/configs/provider_config.dart';

import '../category_model.dart';

class CategoryProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Category.fromJson(map);
    httpClient.baseUrl = ProviderConfig.apiUrl + '/category';
  }

  Future<Response<List<Category>>> getCategories() async =>
      await get('category');
  Future<Response<Category>> getCategory(int id) async =>
      await get('category/$id');
  Future<Response<Category>> postCategory(Category category) async =>
      await post('category', category);
  Future<Response> deleteCategory(int id) async => await delete('category/$id');
}
