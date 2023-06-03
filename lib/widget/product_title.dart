import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  final String title;
  final Color color;
  const ProductTitle({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
