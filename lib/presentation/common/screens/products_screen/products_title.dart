import 'package:flutter/material.dart';

class ProductsTitle extends StatelessWidget {
  final String title;
  ProductsTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    final sidePadding = EdgeInsets.symmetric(horizontal: 25.0);
    final theme = Theme.of(context);
    return Padding(
      padding: sidePadding,
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Explore",
          style: theme.textTheme.headline1,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
