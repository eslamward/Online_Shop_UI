import 'package:flutter/material.dart';
import 'package:online_shop/data/sample_data/sample_products.dart';
import 'package:online_shop/presentation/common/screens/cart_screen/cart_screen.dart';
import 'package:online_shop/presentation/common/screens/products_screen/best_selling.dart';
import 'package:online_shop/presentation/common/screens/products_screen/products_title.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';
import 'package:online_shop/presentation/common/utils/utils.dart';

import '../../common_widgit.dart';
import 'explore_products.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: 25.0);
    return Scaffold(
      backgroundColor: COLOR_GREY,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: statusBarHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              addVerticalSpace(40.0),
              //AppBar Component Widget//
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    RoundedIcon(
                      icon: Icons.person,
                      width: 40.0,
                      height: 40.0,
                      radius: 10.0,
                    ),
                  ],
                ),
              ),
              addVerticalSpace(30.0),
              // Header Search Widget//
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 4.0),
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * .7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 2),
                              blurRadius: 5.0,
                              color: COLOR_DARK.withOpacity(.14),
                            ),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 30.0,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => CartScreen()));
                        },
                        icon: Icon(
                          Icons.shopping_cart_sharp,
                          size: 35.0,
                        ))
                  ],
                ),
              ),
              addVerticalSpace(25.0),
              //Explore Products //
              ProductsTitle(title: "Explore"),
              addVerticalSpace(25.0),

              SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: products.map((product) {
                      return ExploreProducts(
                        product: product,
                      );
                    }).toList(),
                  )),
              addVerticalSpace(40.0),
              // Best Selling Products //
              ProductsTitle(title: "Best Selling"),
              addVerticalSpace(25.0),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: products
                      .map((product) => BestSellingProducts(product: product))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
