import 'package:app_catalogo/show_produtcts/services/get_products_service.dart';
import 'package:app_catalogo/show_produtcts/models/product.dart';
import 'package:flutter/material.dart';

class ProductsViewModel extends ChangeNotifier {
  final GetProductsService _getProductsService = GetProductsService();
  List<Product> products = [];

  Future<void> getProducts() async {
    products = await _getProductsService.getProducts();
    notifyListeners(); // Notifica a la interfaz que se cargaron los productos
  }

  Future<Product?> getProductById(String id) async {
    await Future.delayed(const Duration(seconds: 5));
    return products.firstWhere((product) => product.id == id);
  }
}