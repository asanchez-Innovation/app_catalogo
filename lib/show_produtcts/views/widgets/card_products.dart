import 'package:flutter/material.dart';

class CardProducts extends StatelessWidget {
  const CardProducts({super.key, required this.name, required this.description});
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(name,style: TextStyle(foreground: Paint()..color = Color.fromARGB(198, 94, 7, 141)),),
            Text(description),
          ],
        ),
      ),
    );
  }
}