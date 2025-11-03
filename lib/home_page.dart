import 'package:flutter/material.dart';
import 'package:shop_app/product_list.dart';

// Stateful widget: blueprint which is immutable
class HomePage extends StatefulWidget {
  // immutable class
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); //  actual state
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProductList());
  }
}
