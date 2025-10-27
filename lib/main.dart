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
      home: HomePage(),

      /// Custom Theme
      /// - Custom Font "Lato"
      /// - Custom Color Scheme (default lightColorScheme)
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: lightColorScheme,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
      ),
    );
  }
}
