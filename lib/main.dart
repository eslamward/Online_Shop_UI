import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_shop/presentation/common/screens/products_screen/products_screen.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double size = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: size > 500 ? TEXT_THEME_LARGE_PHONE : TEXT_THEME_SMALL_PHONE,
      ),
      home: ProductsScreen(),
    );
  }
}
