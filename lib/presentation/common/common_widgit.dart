import 'package:flutter/material.dart';
import 'package:online_shop/presentation/common/utils/constansts.dart';

class RoundedIcon extends StatelessWidget {
  final IconData icon;
  final double width;
  final double height;
  final double radius;

  const RoundedIcon({
    Key? key,
    required this.icon,
    required this.width,
    required this.height,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all((width + height) / 2 * .2),
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: COLOR_DARK,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 1),
                  color: COLOR_DARK.withOpacity(.5),
                  blurRadius: 50.0),
            ]),
        child: Icon(
          icon,
          color: COLOR_GREY,
        ),
      ),
    );
  }
}

class CircleRoundedIcon extends StatelessWidget {
  final double height;
  final double width;
  final IconData icon;
  final Color containerColor;
  final Color iconColor;

  const CircleRoundedIcon(
      {Key? key,
      required this.height,
      required this.width,
      required this.icon,
      required this.containerColor,
      required this.iconColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: containerColor, shape: BoxShape.circle),
      child: Icon(
        Icons.favorite,
        color: iconColor,
        size: width / 1.8,
      ),
    );
  }
}
