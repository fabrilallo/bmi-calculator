import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/results_page.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;

  BottomButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            title,
            style: kLargeNumberTextStyle,
          ),
        ),
      ),
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 20.0),
      height: kBottomContainerHeight,
      width: double.infinity,
    );
  }
}
