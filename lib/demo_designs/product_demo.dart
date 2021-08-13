import 'package:flutter/material.dart';

class ProductDemo {
  Widget getProductDemo(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          width: size.width * .25,
          height: size.width * .25,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(size.width * .04),
          ),
          padding: EdgeInsets.all(size.width * .04),
          child: Image.asset(
            'assets/joy_stick.png',
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.fromLTRB(size.width * .03, 0, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Title: ',
                    style: TextStyle(
                        color: Color(0xff131214),
                        fontWeight: FontWeight.w500,
                        fontSize: size.width * .04),
                  ),
                  Text(
                    'Game accessories',
                    style: TextStyle(
                        color: Color(0xff131214),
                        fontWeight: FontWeight.w500,
                        fontSize: size.width * .04),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * .01,
              ),
              Row(
                children: [
                  Text(
                    'Category: ',
                    style: TextStyle(
                        color: Color(0xffE562B9),
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * .03),
                  ),
                  Text(
                    'Computer & Acce...',
                    style: TextStyle(
                        color: Color(0xffE562B9),
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * .03),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * .01,
              ),
              Row(
                children: [
                  Icon(Icons.star,
                      color: Color(0xffC31A65), size: size.width * .03),
                  Icon(Icons.star,
                      color: Color(0xffC31A65), size: size.width * .03),
                  Icon(Icons.star,
                      color: Color(0xffC31A65), size: size.width * .03),
                  Icon(Icons.star,
                      color: Color(0xffC31A65), size: size.width * .03),
                  Icon(Icons.star,
                      color: Color(0xffC31A65), size: size.width * .03)
                ],
              ),
              SizedBox(
                height: size.width * .01,
              ),
              Row(
                children: [
                  Text(
                    '\$',
                    style: TextStyle(
                        color: Color(0xff131214),
                        fontWeight: FontWeight.w800,
                        fontSize: size.width * .04),
                  ),
                  Text(
                    '20',
                    style: TextStyle(
                        color: Color(0xff131214),
                        fontWeight: FontWeight.w800,
                        fontSize: size.width * .04),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
