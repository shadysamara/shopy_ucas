import 'package:elancer_lec1/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<AppProvider>(
        builder: (context, provider, x) {
          return Center(child: Text(provider.productsList?.length.toString()??'no products'),);
        },
      ),
    );
  }
}
