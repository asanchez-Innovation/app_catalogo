import 'package:flutter/material.dart';
import 'package:app_catalogo/show_produtcts/views/list_products.dart';
import 'package:app_catalogo/show_produtcts/viewmodels/products_view_models.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(const MainApp());
  runApp( ChangeNotifierProvider(
    create: (_) => ProductsViewModel(),
    child: const MainApp(),
  ))  ;
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListProducts());
  }
}
