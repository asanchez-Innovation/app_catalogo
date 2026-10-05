import 'package:app_catalogo/show_produtcts/models/tipo_product.dart';
import 'package:app_catalogo/show_produtcts/services/get_products_service.dart';
import 'package:app_catalogo/show_produtcts/models/product.dart';

class ProductsViewModel {
  var _getProductsService = GetProductsService();
  List<Product> products = [];

  Future<List<Product>> getProducts() async {
    products = await _getProductsService.getProducts();
    return products;
  }
}
