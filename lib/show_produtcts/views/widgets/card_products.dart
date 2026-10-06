import 'package:flutter/material.dart';

class CardProducts extends StatelessWidget {
  const CardProducts({
    super.key,
    required this.name,
    required this.description,
    required this.onTap,
  });
  final String name;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  foreground: Paint()
                    ..color = const Color.fromARGB(198, 94, 7, 141),
                ),
              ),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
