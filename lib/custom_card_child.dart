import 'package:flutter/material.dart';
import 'constants.dart';

class CustomCardChild extends StatelessWidget {
  CustomCardChild({this.icon, this.text});

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      icon,
      SizedBox(
        height: 15.0,
      ),
      Text(
        text,
        style: kCardTextStyle,
      )
    ]);
  }
}
