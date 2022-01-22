import 'package:flutter/material.dart';
import 'package:ss_mann/model/product.dart';
import 'package:ss_mann/widgets/product_pane.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;
  const ProductGrid({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        ...products.map(
          (product) => ProductPane(product: product),
        ),
      ],
    );
  }
}