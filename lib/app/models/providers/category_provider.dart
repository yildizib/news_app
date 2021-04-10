import 'package:get/get.dart';

import '../category_model.dart';

class CategoryProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Category.fromJson(map);
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Response<Category>> getCategory(int id) async =>
      await get('category/$id');
  Future<Response<Category>> postCategory(Category category) async =>
      await post('category', category);
  Future<Response> deleteCategory(int id) async => await delete('category/$id');
}
