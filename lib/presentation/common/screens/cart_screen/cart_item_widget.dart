import 'package:flutter/material.dart';
import 'package:online_shop/data/models/cart_model.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';
import 'package:online_shop/presentation/common/utils/utils.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;
  CartItemWidget({required this.cartItem});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      padding: EdgeInsets.symmetric(horizontal: 25.00),
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30.0,
            child: Checkbox(
              tristate: false,
              value: true,
              activeColor: Colors.redAccent,
              checkColor: Colors.white,
              focusColor: Colors.cyan,
              side: BorderSide(
                width: 20,
                style: BorderStyle.solid,
                color: Colors.red,
              ),
              onChanged: (bool) {},
            ),
          ),
          addHorizontalSpace(10.0),
          Container(
            width: (size.width - 50.0) * .30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("${cartItem.product.imageUrl}"),
                )),
          ),
          addHorizontalSpace(25.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${cartItem.product.name}",
                  style: theme.textTheme.headline5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${cartItem.product.price * cartItem.quantity}",
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: Colors.redAccent),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: COLOR_WHITE,
                          borderRadius: BorderRadius.circular(18.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, .5),
                              blurRadius: 10.0,
                              color: COLOR_DARK_GREY,
                            )
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Icon(
                                Icons.remove,
                                size: 18.0,
                              ),
                            ),
                          ),
                          addHorizontalSpace(10.0),
                          Text("${cartItem.quantity}"),
                          addHorizontalSpace(10.0),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Icon(
                                Icons.add,
                                size: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
