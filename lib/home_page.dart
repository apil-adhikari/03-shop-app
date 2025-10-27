import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final border = OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
    borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Row(
        //   children: [
        //     Column(
        //       children: [
        //         Padding(
        //           padding: EdgeInsetsGeometry.all(16),
        //           child: Text(
        //             "S",
        //             style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
        //           ),
        //         ),
        //       ],
        //     ),
        //     Expanded(child: TextField()),
        //   ],
        // ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Shose\nCollections",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),
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
          ],
        ),
      ),
    );
  }
}
