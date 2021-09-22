import 'package:flutter/material.dart';
import 'package:online_shop/data/models/product_model.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';

import '../../common_widgit.dart';

class BestSellingProducts extends StatelessWidget {
  final Product product;
  BestSellingProducts({required this.product});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(left: 25.0),
      padding: EdgeInsets.all(15.0),
      height: 110.0,
      width: size.width - 50.0,
      decoration: BoxDecoration(
          color: COLOR_WHITE,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 10.0,
                color: COLOR_DARK_GREY.withOpacity(.2)),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: (size.width - 50.0) * .20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("${product.imageUrl}"),
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: (size.width - 50.0) * .50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${product.name}", style: theme.textTheme.headline6),
                Text("${product.description}",
                    style: theme.textTheme.bodyText2),
                Text(
                  "\$${product.price}",
                  style: theme.textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            //width: (size.width - 50) * .20,
            child: RoundedIcon(
              width: 35.0,
              height: 35.0,
              icon: Icons.arrow_forward,
              radius: 10.0,
            ),
          )
        ],
      ),
    );
  }
}
