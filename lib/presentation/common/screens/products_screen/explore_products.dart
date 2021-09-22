import 'package:flutter/material.dart';
import 'package:online_shop/data/models/product_model.dart';
import 'package:online_shop/presentation/common/screens/product_detail_screen/product_detail_screen.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';
import 'package:online_shop/presentation/common/utils/utils.dart';

import '../../common_widgit.dart';

class ExploreProducts extends StatelessWidget {
  final Product product;

  const ExploreProducts({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      padding: EdgeInsets.all(12.0),
      height: 340,
      width: size.width * .50,
      decoration: BoxDecoration(
          color: COLOR_WHITE,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 2.0,
              color: COLOR_DARK_GREY.withOpacity(.15),
            )
          ]),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => ProductDetailScreen(
                        product: product,
                      )));
            },
            child: Stack(
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      color: COLOR_DARK,
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("${product.imageUrl}"),
                      )),
                ),
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  child: CircleRoundedIcon(
                    icon: Icons.favorite,
                    height: 36.0,
                    width: 36.0,
                    containerColor: Colors.redAccent,
                    iconColor: COLOR_WHITE,
                  ),
                ),
              ],
            ),
          ),
          addVerticalSpace(18.0),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${product.name}",
                  style: theme.textTheme.headline6,
                ),
                Text(
                  "${product.city}",
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
          ),
          addVerticalSpace(18.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price}",
                style: theme.textTheme.subtitle1,
              ),
              Container(
                width: 36.0,
                height: 36.0,
                decoration:
                    BoxDecoration(color: COLOR_DARK, shape: BoxShape.circle),
                child: Icon(
                  Icons.add,
                  color: COLOR_WHITE,
                  size: 20.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
