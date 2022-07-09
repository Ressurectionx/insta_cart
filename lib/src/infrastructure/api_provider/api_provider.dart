import 'package:dio/dio.dart';

import '../../config/utils/utils.dart';
import '../../data/models/product_model.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<ProductModel> fetchProductList() async {
    try {
      Response response = await _dio.get(productsEndPoint);
      return ProductModel.fromJson(response.data);
    } catch (error) {
    //  print("Exception occured: $error stackTrace: $stacktrace");
      return ProductModel.withError("Data not found / Connection issue");
    }
  }

  Future<ProductModel> fetchMobileList() async {
    try {
      Response response = await _dio.get(mobileEndPoint);
      return ProductModel.fromJson(response.data);
    } catch (error) {
    //  print("Exception occured: $error stackTrace: $stacktrace");
      return ProductModel.withError("Data not found / Connection issue");
    }
  }

  Future<ProductModel> fetchLaptopList() async {
    try {
      Response response = await _dio.get(laptopEndPoint);
      return ProductModel.fromJson(response.data);
    } catch (error) {
    //  print("Exception occured: $error stackTrace: $stacktrace");
      return ProductModel.withError("Data not found / Connection issue");
    }
  }



}