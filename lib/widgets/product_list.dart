import 'package:flutter/material.dart';
import 'package:shop_app/global_variables.dart';
import 'package:shop_app/widgets/product_card.dart';
import 'package:shop_app/pages/product_details_page.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  // Border
  final border = OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
    borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
  );

  // List of Product Name we have:
  final List<String> filters = [
    'All',
    'Addidas',
    'Kappa',
    'La Gears',
    'Legea',
    'Merrell',
    'Nike',
  ];

  // For making the selection
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter =
        filters[0]; // Before calling the build context, set the selected filter to filters[0] element
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Shose\nCollections",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Padding(
                  // padding: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    child: Chip(
                      label: Text(filter),
                      labelStyle: TextStyle(fontSize: 16),
                      side: BorderSide(color: Color.fromRGBO(245, 247, 249, 1)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: selectedFilter == filter
                          ? Theme.of(context).colorScheme.primary
                          : Color.fromRGBO(245, 247, 249, 1),
                      // The padding between the contents of the chip and the outside.
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: products.length,
              itemBuilder: (context, index) {
                // IMP: Extract one particular product using products
                final product = products[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailsPage(product: product),
                    ),
                  ),
                  child: ProductCard(
                    title: product['title'] as String,
                    price: product['price'].toString(),
                    image: product['imageUrl'] as String,
                    containerBackgroundColor: index.isEven
                        ? Color.fromRGBO(216, 240, 253, 1)
                        : Color.fromRGBO(245, 247, 249, 1),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
