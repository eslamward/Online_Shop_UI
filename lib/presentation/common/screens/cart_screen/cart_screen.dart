import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/data/sample_data/sample_products.dart';
import 'package:online_shop/presentation/common/screens/cart_screen/cart_item_widget.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';
import 'package:online_shop/presentation/common/utils/utils.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double appBarHeight = AppBar().preferredSize.height;
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: 25.0);
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: size.width,
          height: size.height * .65,
          child: Column(
            children: [
              addVerticalSpace(statusBarHeight + 50.0),
              Container(
                width: size.width,
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => CartScreen()));
                      },
                    ),
                  ],
                ),
              ),
              addVerticalSpace(25.0),
              Expanded(
                  child: ListView(
                physics: BouncingScrollPhysics(),
                children: cartItems
                    .map((cartItem) => CartItemWidget(cartItem: cartItem))
                    .toList(),
              ))
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: COLOR_WHITE,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 30.0,
                    color: COLOR_DARK_GREY.withOpacity(.5),
                  )
                ]),
            child: Column(
              children: [
                addVerticalSpace(15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Selected Items",
                      style: theme.textTheme.bodyText1,
                    ),
                    Text(
                      "\$235.00",
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: Colors.redAccent),
                    ),
                  ],
                ),
                addVerticalSpace(10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Free",
                      style: theme.textTheme.bodyText1,
                    ),
                    Text(
                      "\$25.00",
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: Colors.redAccent),
                    ),
                  ],
                ),
                addVerticalSpace(25.0),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: COLOR_DARK_GREY.withOpacity(.5),
                ),
                addVerticalSpace(30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: theme.textTheme.headline3,
                    ),
                    Text(
                      "\$235.00",
                      style: theme.textTheme.headline3
                          ?.copyWith(color: Colors.redAccent),
                    ),
                  ],
                ),
                addVerticalSpace(30.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width - 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: COLOR_DARK,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      "Checkout",
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: COLOR_GREY),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
