import 'package:app_catalogo/show_produtcts/viewmodels/products_view_models.dart';
import 'package:app_catalogo/show_produtcts/views/widgets/card_products.dart';
import 'package:app_catalogo/show_produtcts/views/widgets/details_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListProducts extends StatefulWidget {
  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _productsViewModel = context.watch<ProductsViewModel>();
    return Scaffold(
      appBar: AppBar(title: Text('List Products')),
      body: ListView.builder(
        itemCount: _productsViewModel.products.length,
        itemBuilder: (context, index) {
          final product = _productsViewModel.products[index];
          return CardProducts(
            name: product.name,
            description: product.description,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsProduct(productId: product.id),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProductsViewModel>().getProducts();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
