import 'dart:ui';

import 'package:flutter/material.dart';

class Review {
  Widget getReviewTemplate(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Color(0xffF1F9F9),
      padding: EdgeInsets.fromLTRB(size.width * .045, size.width * .045,
          size.width * .045, size.width * .045),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Related Product',
            style: TextStyle(
                color: Colors.black,
                fontSize: size.width * .04,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: size.width * .03),
          Row(
            children: [
              Container(
                width: size.width * .08,
                height: size.width * .08,
                child: CircleAvatar(
                    backgroundImage: AssetImage(
                  'assets/girl.png',
                )),
              ),
              SizedBox(
                width: size.width * .02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Edward willson',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * .03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '20 June, 2021',
                    style: TextStyle(
                      color: Color(0xff85848A),
                      fontSize: size.width * .02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffF6DBE5)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(size.width * .3),
                              side: BorderSide(
                                color: Color(0xffF6DBE5),
                              )))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/thumb_up.png',
                      ),
                      SizedBox(
                        width: size.width * .01,
                      ),
                      Text(
                        'Helpful (6)',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * .025,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
