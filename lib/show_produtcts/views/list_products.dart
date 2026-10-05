import 'package:app_catalogo/show_produtcts/viewmodels/products_view_models.dart';
import 'package:app_catalogo/show_produtcts/views/widgets/card_products.dart';
import 'package:flutter/material.dart';

class ListProducts extends StatefulWidget {
  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {

  final ProductsViewModel _productsViewModel = ProductsViewModel();
  Future<void> loadProducts() async  {
    await _productsViewModel.getProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Products'),
      ),
      body: ListView.builder(
        itemCount: _productsViewModel.products.length,
        itemBuilder: (context, index) {
          final product = _productsViewModel.products[index];
          return CardProducts(
            name: product.name,
            description: product.description,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadProducts,
        child: Icon(Icons.refresh),
      ),
    );
  }
}

//Hacer un boton, que al hacer click llame a la función loadProducts()