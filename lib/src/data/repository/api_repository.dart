import 'package:insta_cart/src/infrastructure/api_provider/api_provider.dart';

import '../models/product_model.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<ProductModel> fetchProductList() {
    return _provider.fetchProductList();
  }
}

class NetworkError extends Error {}