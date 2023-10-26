// ignore_for_file: missing_required_param

import 'package:store/helpers/api.dart';
import 'package:store/models/producs_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().Post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });
    return ProductModel.fromJson(data);
  }
}