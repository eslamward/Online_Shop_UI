import 'package:flutter/material.dart';

class ActiveColor extends StatelessWidget {
  final Color color;
  final bool active;

  const ActiveColor({Key? key, required this.color, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        color: active ? Colors.white : color,
        border: Border.all(width: 2, color: color),
        shape: BoxShape.circle,
      ),
      child: Container(
          width: 15.0,
          height: 15.0,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          )),
    );
  }
}
