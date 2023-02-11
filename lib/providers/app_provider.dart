import 'package:elancer_lec1/data_respositories/api_helper.dart';
import 'package:elancer_lec1/data_respositories/models/product.dart';
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  AppProvider() {
    getAllProducts();
  }
  List<Product>? productsList;
  getAllProducts() async {
    List<Product>? products = await ApiHelper.apiHelper.getAllProducts();
    productsList = products;
    notifyListeners();
  }
}
