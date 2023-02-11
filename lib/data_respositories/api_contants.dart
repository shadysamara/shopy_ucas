class ApiConstants {
  static const String baseUrl = 'https://fakestoreapi.com/';
  static const String allProducts = 'products';
  static String singleProduct(int id) => 'products/$id';
  static const String limitProducts = 'products?limit=5';
  static const String categories = 'products/categories';
  static String categoyProducts(String name) => 'products/category/$name';
}
