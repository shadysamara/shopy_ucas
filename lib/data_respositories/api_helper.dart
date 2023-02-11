import 'package:dio/dio.dart';
import 'package:elancer_lec1/data_respositories/api_contants.dart';
import 'package:elancer_lec1/data_respositories/models/product.dart';

class ApiHelper {
  ApiHelper._();
  static ApiHelper apiHelper = ApiHelper._(); // create new object
  Dio dio = Dio()..options.baseUrl = ApiConstants.baseUrl;

  Future<List<Product>?> getAllProducts() async {
    try {
      Response response = await dio.get(ApiConstants.allProducts);
      List data = response.data;
      List<Product> products = data.map((e) => Product.fromJson(e)).toList();
      print(products.length);
      return products;
    } on Exception catch (e) {}
  }

  Future<List<Product>?> getFirstFiveProducts() async {
    try {
      Response response = await dio.get(ApiConstants.limitProducts);
      List data = response.data;
      List<Product> products = data.map((e) => Product.fromJson(e)).toList();
      return products;
    } on Exception catch (e) {}
  }

  Future<Product?> getSingleProduct(int id) async {
    try {
      Response response = await dio.get(ApiConstants.singleProduct(id));
      Map map = response.data;
      Product product = Product.fromJson(map as Map<String, dynamic>);
      return product;
    } on Exception catch (e) {
      // TODO
    }
  }

  Future<List<String>?> getAllCategories() async {
    try {
      Response response = await dio.get(ApiConstants.categories);
      List data = response.data;
      List<String> cats = data.map((e) => e.toString()).toList();
      return cats;
    } on Exception catch (e) {
      // TODO
    }
  }

  Future<List<Product>?> getCategoryProducts(String catName) async {
    try {
      Response response = await dio.get(ApiConstants.categoyProducts(catName));
      List data = response.data;
      List<Product> products = data.map((e) => Product.fromJson(e)).toList();
      return products;
    } on Exception catch (e) {}
  }
}


