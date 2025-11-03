import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart_page.dart';
import 'package:shop_app/widgets/product_list.dart';

// Stateful widget: blueprint which is immutable
class HomePage extends StatefulWidget {
  // immutable class
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); //  actual state
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [ProductList(), CartPage()];

  // Set the index of the homepage(initially first page-> index : 0)
  int currentPageIndex = 0; // First Page shown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // To keep track of the product list when we get back from cart screen,
      // we are using IndexedStack() for painting single children
      body: IndexedStack(index: currentPageIndex, children: pages),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
        onTap: (value) => setState(() {
          currentPageIndex = value;
        }),
        currentIndex: currentPageIndex,
      ),
    );
  }
}
