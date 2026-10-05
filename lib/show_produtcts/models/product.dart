import 'package:app_catalogo/show_produtcts/models/tipo_product.dart';

class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final TipoProduct tipoProductId;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tipoProductId,
  });
}