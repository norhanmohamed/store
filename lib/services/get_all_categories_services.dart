// ignore_for_file: missing_required_param

import 'package:store/helpers/api.dart';

class AllCategoriesServices {
  Future<List> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
