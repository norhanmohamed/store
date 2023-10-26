// ignore_for_file: missing_required_param

import 'package:store/helpers/api.dart';
import 'package:store/models/producs_model.dart';

class GetAllProductsService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
