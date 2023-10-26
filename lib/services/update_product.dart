// ignore_for_file: missing_required_param, non_constant_identifier_names

import '../helpers/api.dart';
import '../models/producs_model.dart';

class UpdateProductService {
  Future<ProductModel> UpdateProduct(
      {required String title,
      required String price,
      required String description,
      required int id,
      required String image,
      required String category}) async {
    print('product id =$id');
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });
    return ProductModel.fromJson(data);
  }
}
