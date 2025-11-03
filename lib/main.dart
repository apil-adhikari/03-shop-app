import 'package:flutter/material.dart';
import 'package:shop_app/core/theme/color_schemes.dart';
import 'package:shop_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      // home: ProductDetailsPage(product: products[0]),
      home: HomePage(),

      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Lato',
        colorScheme: lightColorScheme,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),
          titleMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          bodySmall: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
    );
  }
}
