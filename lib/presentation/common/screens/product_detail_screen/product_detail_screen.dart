import 'package:flutter/material.dart';
import 'package:online_shop/data/models/product_model.dart';
import 'package:online_shop/presentation/common/screens/cart_screen/cart_screen.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';
import 'package:online_shop/presentation/common/utils/utils.dart';

import '../../common_widgit.dart';
import 'active_color_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  ProductDetailScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double appBarHeight = AppBar().preferredSize.height;
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: 25.0);
    bool activeColor = true;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    height: size.height * .58,
                    child: Stack(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height * .53,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40.0),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("${product.imageUrl}"),
                              )),
                        ),
                        Positioned(
                            top: statusBarHeight + 50.0,
                            child: Container(
                              width: size.width,
                              padding: sidePadding,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_back,
                                      size: 30.0,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  Text(
                                    "Product",
                                    style: theme.textTheme.headline6,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.shopping_cart_sharp,
                                      size: 30.0,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (ctx) => CartScreen()));
                                    },
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            right: 30.0,
                            bottom: 18.0,
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 50.0,
                                  color: COLOR_DARK_GREY.withOpacity(.4),
                                )
                              ]),
                              child: CircleRoundedIcon(
                                icon: Icons.favorite,
                                height: 50.0,
                                width: 50.0,
                                containerColor: COLOR_WHITE,
                                iconColor: Colors.redAccent,
                              ),
                            ))
                      ],
                    ),
                  ),
                  addVerticalSpace(1.0),
                  Container(
                    padding: sidePadding,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$${product.price}",
                              style: theme.textTheme.headline2
                                  ?.copyWith(color: Colors.redAccent),
                            ),
                            Text(
                              "${product.name}",
                              style: theme.textTheme.headline5,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 20,
                              color: Colors.orange,
                            ),
                            Text(
                              "4.4",
                              style: theme.textTheme.bodyText1,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  addVerticalSpace(25.00),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "Color Option",
                      style: theme.textTheme.bodyText1,
                    ),
                  ),
                  addVerticalSpace(10.00),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      children: [
                        ActiveColor(color: Colors.redAccent, active: false),
                        ActiveColor(color: Colors.black87, active: true),
                        ActiveColor(color: COLOR_DARK_GREY, active: false),
                      ],
                    ),
                  ),
                  addVerticalSpace(25.0),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "Description",
                      style: theme.textTheme.headline5,
                    ),
                  ),
                  addVerticalSpace(7.0),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "${product.description}",
                      style: theme.textTheme.bodyText2?.copyWith(
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 60.0,
                width: size.width * .5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                  ),
                  color: COLOR_DARK,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: COLOR_WHITE,
                    ),
                    Text(
                      "Add ti Cart",
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: COLOR_GREY),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
