import 'package:flutter/material.dart';

class AppBackButton {
  Widget getBackButton(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .065,
      height: size.width * .065,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: size.width * .005),
        borderRadius: BorderRadius.circular(size.width * .02),
      ),
      child: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    );
  }
}
