import 'package:app_catalogo/show_produtcts/models/product.dart';
import 'package:app_catalogo/show_produtcts/models/tipo_product.dart';

class GetProductsService {
  Future<List<Product>> getProducts() async {
    var products = <Product>[];

    products.add(
      Product(
        id: '1',
        name: 'Spaguetti',
        price: 10.0,
        description: 'Descripción del producto 1',
        tipoProductId: TipoProduct.COMIDA,
      ),
    );

    products.add(
      Product(
        id: '2',
        name: 'Topo Chico',
        price: 20.0,
        description: 'Descripción del producto 2',
        tipoProductId: TipoProduct.BEBIDA,
      ),
    );

    products.add(
      Product(
        id: '3',
        name: 'Cloro',
        price: 30.0,
        description: 'Descripción del producto 3',
        tipoProductId: TipoProduct.LIMPIEZA,
      ),
    );

    products.add(
      Product(
        id: '4',
        name: 'Mocriondas',
        price: 40.0,
        description: 'Descripción del producto 4',
        tipoProductId: TipoProduct.ELECTRONICA,
      ),
    );

    return products;
  }
}
