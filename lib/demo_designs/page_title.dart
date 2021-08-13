import 'package:flutter/material.dart';

class PageTitle {
  Widget getPageTitle(BuildContext context, String title) {
    Size size = MediaQuery.of(context).size;
    return Text(
      '$title',
      style: TextStyle(
          color: Color(0xff131214),
          fontWeight: FontWeight.w600,
          fontSize: size.width * .08),
    );
  }
}
