import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final Color containerBackgroundColor;

  /// A reusable ProductCard widget to display product information.
  /// It takes title, price, image URL, and background color as parameters.
  /// This widget is used in the ProductList to show individual products.
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.containerBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      height: 300,
      decoration: BoxDecoration(
        color: containerBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          Text('\$$price', style: Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 5),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Center(child: Image.asset(image, fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
