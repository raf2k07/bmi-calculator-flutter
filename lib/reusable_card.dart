import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardColor, this.cardChild, this.handleOnTap});

  final Color cardColor;
  final Widget cardChild;

  final Function handleOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleOnTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: cardColor),
      ),
    );
  }
}
