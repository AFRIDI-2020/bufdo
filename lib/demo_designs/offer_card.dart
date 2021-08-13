import 'package:flutter/material.dart';

class OfferCard {
  Widget getOfferCard(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(size.width * .04),
      ),
      child: Container(
          width: size.width * .4,
          height: size.width * .7,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(size.width * .04)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(size.width * .015,
                    size.width * .015, size.width * .015, size.width * .015),
                child: Container(
                    width: size.width * .4,
                    height: size.width * .37,
                    decoration: BoxDecoration(
                        color: Color(0xffF5F6F9),
                        borderRadius: BorderRadius.all(
                            Radius.circular(size.width * .04))),
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              left: 10,
                              top: 0,
                              child: Container(
                                height: size.width * .18,
                                width: size.width * .17,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: -15,
                                      right: 5,
                                      child: Container(
                                        height: size.width * .18,
                                        width: size.width * .17,
                                        child: Image.asset(
                                          'assets/offer_tag.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      child: Container(
                                        height: size.width * .18,
                                        width: size.width * .17,
                                        child: Column(
                                          children: [
                                            Text(
                                              '30%',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'off',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Center(
                                child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(0, size.width * .1, 0, 0),
                              child: Container(
                                width: size.width * .25,
                                height: size.width * .2,
                                child: Image.asset(
                                  'assets/joy_stick.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Image.asset(
                                'assets/heart_black_hand_pick.png',
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * .015, 0, size.width * .015, 0),
                child: Text(
                  'Game controller gamin...',
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * .03),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: size.width * .25,
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            size.width * .015, 0, size.width * .015, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset('assets/taka.png',
                                height: size.width * .038,
                                width: size.width * .03),
                            Text(
                              '15',
                              style: TextStyle(
                                  color: Color(0xff131214),
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * .027),
                            ),
                            SizedBox(
                              width: size.width * .01,
                            ),
                            Container(
                                width: size.width * .06,
                                height: size.width * .035,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/taka_light.png',
                                            width: size.width * .027,
                                            height: size.width * .035,
                                          ),
                                          Text(
                                            '20',
                                            style: TextStyle(
                                                color: Color(0xff85848A),
                                                fontSize: size.width * .025),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: Divider(
                                        color: Color(0xff85848A),
                                        height: size.width * .001,
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.width * .01,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * .015,
                          ),
                          Image.asset(
                            'assets/star.png',
                            height: size.width * .025,
                            width: size.width * .025,
                          ),
                          Image.asset(
                            'assets/star.png',
                            height: size.width * .025,
                            width: size.width * .025,
                          ),
                          Image.asset(
                            'assets/star.png',
                            height: size.width * .025,
                            width: size.width * .025,
                          ),
                          Image.asset(
                            'assets/star.png',
                            height: size.width * .025,
                            width: size.width * .025,
                          ),
                          Image.asset(
                            'assets/star.png',
                            height: size.width * .025,
                            width: size.width * .025,
                          ),
                          SizedBox(width: size.width * .01),
                          Text(
                            '(101)',
                            style: TextStyle(
                                color: Color(0xff85848A),
                                fontSize: size.width * .02),
                          )
                        ],
                      )
                    ]),
                  ),
                  Container(
                    width: size.width * .15,
                    child: Container(
                      width: size.width * .06,
                      height: size.width * .06,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: size.width * .003,
                          ),
                          shape: BoxShape.circle),
                      child: Icon(Icons.add,
                          color: Colors.black, size: size.width * .04),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
