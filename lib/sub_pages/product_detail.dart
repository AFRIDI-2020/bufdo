import 'package:bufdo/demo_designs/back_button.dart';
import 'package:bufdo/demo_designs/offer_card.dart';
import 'package:bufdo/demo_designs/review_demo.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _selected_color = 1;
  String _seleted_size = 'S';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(child: _bodyUI(BuildContext)),
    );
  }

  Widget _bodyUI(BuildContext) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: size.height * .85,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.width,
                      color: Color(0xffF7F5F5),
                      padding: EdgeInsets.all(size.width * .045),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 0,
                              child: AppBackButton().getBackButton(context)),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: size.width * .065,
                                height: size.width * .065,
                                child: Image.asset(
                                  'assets/more.png',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                                width: size.width * .2,
                                decoration: BoxDecoration(
                                  color: Color(0xffEE2A7B).withOpacity(0.13),
                                  borderRadius:
                                      BorderRadius.circular(size.width * .3),
                                ),
                                padding: EdgeInsets.fromLTRB(
                                    size.width * .03,
                                    size.width * .02,
                                    size.width * .03,
                                    size.width * .02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '6',
                                      style: TextStyle(
                                          color: Color(0xffC31A65),
                                          fontSize: size.width * .04),
                                    ),
                                    Text(
                                      '/',
                                      style: TextStyle(
                                          color: Color(0xffC31A65),
                                          fontSize: size.width * .04),
                                    ),
                                    Text(
                                      '11',
                                      style: TextStyle(
                                        color: Color(0xffC31A65),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(size.width * .03),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffEE2A7B).withOpacity(0.13),
                                ),
                                child: Image.asset(
                                  'assets/red_heart.png',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Center(child: Image.asset('assets/joy_stick_2.png'))
                        ],
                      ),
                    ),
                    SizedBox(height: size.width * .02),
                    Container(
                      width: size.width,
                      color: Color(0xffF1F9F9),
                      padding: EdgeInsets.fromLTRB(size.width * .045,
                          size.width * .045, 0, size.width * .045),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'US\$560.99',
                                      style: TextStyle(
                                          color: Color(0xff131214),
                                          fontSize: size.width * .045,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: size.width * .02),
                                    Text(
                                      'US\$899.99',
                                      style: TextStyle(
                                        color: Color(0xff85848A),
                                        fontSize: size.width * .03,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    SizedBox(width: size.width * .02),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffC31A65),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              size.width * .01)),
                                      padding: EdgeInsets.fromLTRB(
                                          size.width * .004,
                                          size.width * .001,
                                          size.width * .004,
                                          size.width * .001),
                                      child: Row(
                                        children: [
                                          Text(
                                            '36',
                                            style: TextStyle(
                                              color: Color(0xffC31A65),
                                              fontSize: size.width * .025,
                                            ),
                                          ),
                                          Text(
                                            '%OFF',
                                            style: TextStyle(
                                              color: Color(0xffC31A65),
                                              fontSize: size.width * .025,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: size.width * .03),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on_outlined,
                                      color: Color(0xff85848A),
                                      size: size.width * .04,
                                    ),
                                    SizedBox(
                                      width: size.width * .02,
                                    ),
                                    Text(
                                      'Earn 400 BG points',
                                      style: TextStyle(
                                          color: Color(0xff85848A),
                                          fontSize: size.width * .03,
                                          letterSpacing: 0.3),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.width * .03),
                                Container(
                                  padding: EdgeInsets.only(
                                    right: size.width * .1,
                                  ),
                                  child: Text(
                                    'Title: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis lectus amet feugiat faucibus praesent.',
                                    style: TextStyle(
                                        color: Color(0xff131214),
                                        fontSize: size.width * .03,
                                        letterSpacing: 0.3,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(height: size.width * .03),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '4.9',
                                        style: TextStyle(
                                            color: Color(0xff131214),
                                            fontSize: size.width * .03,
                                            letterSpacing: 0.3,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: size.width * .01,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: size.width * .032,
                                        color: Color(0xffC31A65),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: size.width * .032,
                                        color: Color(0xffC31A65),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: size.width * .032,
                                        color: Color(0xffC31A65),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: size.width * .032,
                                        color: Color(0xffC31A65),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: size.width * .032,
                                        color: Color(0xffC31A65),
                                      )
                                    ]),
                                SizedBox(height: size.width * .03),
                                Row(
                                  children: [
                                    Text(
                                      '108 Reviews',
                                      style: TextStyle(
                                        color: Color(0xff85848A),
                                        fontSize: size.width * .028,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * .03,
                                    ),
                                    Container(
                                      height: size.width * .04,
                                      child: VerticalDivider(
                                        color: Color(0xff85848A),
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * .03,
                                    ),
                                    Text(
                                      '1021 Orders',
                                      style: TextStyle(
                                        color: Color(0xff85848A),
                                        fontSize: size.width * .028,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * .03,
                                    ),
                                    Container(
                                      height: size.width * .04,
                                      child: VerticalDivider(
                                        color: Color(0xff85848A),
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * .03,
                                    ),
                                    Text(
                                      '2020 Wish',
                                      style: TextStyle(
                                        color: Color(0xff85848A),
                                        fontSize: size.width * .028,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFDE3EE),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(size.width * .3),
                                  bottomLeft: Radius.circular(size.width * .3),
                                )),
                            padding: EdgeInsets.fromLTRB(
                                size.width * .02,
                                size.width * .01,
                                size.width * .01,
                                size.width * .01),
                            child: Icon(
                              Icons.share,
                              color: Color(0xffC31A65),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: size.width * .04),
                    Container(
                      width: size.width,
                      color: Color(0xffF1F9F9),
                      padding: EdgeInsets.fromLTRB(
                          size.width * .045,
                          size.width * .045,
                          size.width * .045,
                          size.width * .045),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Select Colour:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.width * .03,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.3),
                              ),
                              SizedBox(width: size.width * .04),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selected_color = 1;
                                  });
                                },
                                child: Container(
                                  width: size.width * .05,
                                  height: size.width * .05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _selected_color == 1
                                            ? Color(0xffC31A65)
                                            : Color(0xffF1F9F9),
                                      )),
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffD0D1D2),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * .01),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selected_color = 2;
                                  });
                                },
                                child: Container(
                                  width: size.width * .05,
                                  height: size.width * .05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _selected_color == 2
                                            ? Color(0xffC31A65)
                                            : Color(0xffF1F9F9),
                                      )),
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffE5E1FF),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * .01),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selected_color = 3;
                                  });
                                },
                                child: Container(
                                  width: size.width * .05,
                                  height: size.width * .05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _selected_color == 3
                                            ? Color(0xffC31A65)
                                            : Color(0xffF1F9F9),
                                      )),
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff5C52FD),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * .01),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selected_color = 4;
                                  });
                                },
                                child: Container(
                                  width: size.width * .05,
                                  height: size.width * .05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _selected_color == 4
                                            ? Color(0xffC31A65)
                                            : Color(0xffF1F9F9),
                                      )),
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFBAF2),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * .04,
                          ),
                          Row(
                            children: [
                              Text(
                                'Select Size:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.width * .03,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.3),
                              ),
                              SizedBox(width: size.width * .04),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _seleted_size = 'S';
                                  });
                                },
                                child: Container(
                                  width: size.width * .05,
                                  height: size.width * .05,
                                  alignment: Alignment.center,
                                  decoration: _seleted_size == 'S'
                                      ? BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(colors: [
                                            Color(0xffC31A65).withOpacity(1),
                                            Color(0xffFA4494).withOpacity(1)
                                          ]),
                                        )
                                      : BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xffC31A65),
                                          )),
                                  child: Text(
                                    'S',
                                    style: TextStyle(
                                      color: _seleted_size == 'S'
                                          ? Color(0xffF7F5F5)
                                          : Color(0xffC31A65),
                                      fontSize: size.width * .025,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * .02),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _seleted_size = 'M';
                                  });
                                },
                                child: Container(
                                  width: size.width * .05,
                                  height: size.width * .05,
                                  alignment: Alignment.center,
                                  decoration: _seleted_size == 'M'
                                      ? BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(colors: [
                                            Color(0xffC31A65).withOpacity(1),
                                            Color(0xffFA4494).withOpacity(1)
                                          ]),
                                        )
                                      : BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xffC31A65),
                                          )),
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                      color: _seleted_size == 'M'
                                          ? Color(0xffF7F5F5)
                                          : Color(0xffC31A65),
                                      fontSize: size.width * .025,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * .04),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _seleted_size = 'XL';
                                  });
                                },
                                child: Container(
                                  width: size.width * .05,
                                  height: size.width * .05,
                                  alignment: Alignment.center,
                                  decoration: _seleted_size == 'XL'
                                      ? BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(colors: [
                                            Color(0xffC31A65).withOpacity(1),
                                            Color(0xffFA4494).withOpacity(1)
                                          ]),
                                        )
                                      : BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xffC31A65),
                                          )),
                                  child: Text(
                                    'XL',
                                    style: TextStyle(
                                      color: _seleted_size == 'XL'
                                          ? Color(0xffF7F5F5)
                                          : Color(0xffC31A65),
                                      fontSize: size.width * .025,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.width * .04,
                          ),
                          Text(
                            'Product Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Convallis sollicitudin neque mi velit est ac. Duis viverra nec gravida sagittis dis urna eu donec duis. Tristique tellus blandit nibh ac, pellentesque euismod semper consectetur eget.',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * .03),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: size.width * .04),
                    Container(
                      width: size.width,
                      color: Color(0xffF1F9F9),
                      padding: EdgeInsets.fromLTRB(
                          size.width * .045,
                          size.width * .045,
                          size.width * .045,
                          size.width * .045),
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
                          Container(
                            height: size.width * .6,
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return SizedBox(width: size.width * .02);
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return OfferCard().getOfferCard(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.width * .04),
                    Container(
                      width: size.width,
                      height: size.width,
                      child: ListView.builder(
                          itemCount: 1,
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Review().getReviewTemplate(context);
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.width * .25,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      width: size.width * .2,
                      height: size.width * .25,
                      padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Center(
                        child: Container(
                            child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Icon(
                              Icons.add_shopping_cart,
                              size: size.width * .1,
                              color: Colors.green[800],
                            ),
                            Positioned(
                              right: -5,
                              top: -8,
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * .04,
                                height: size.width * .04,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.width * .02),
                                ),
                              ),
                            )
                          ],
                        )),
                      )),
                  Container(
                    width: size.width * .8,
                    padding: EdgeInsets.fromLTRB(size.width * .02,
                        size.width * .05, size.width * .02, size.width * .03),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * .36,
                          height: size.width * .25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffC31A65).withOpacity(1),
                                Color(0xffFA4494).withOpacity(1)
                              ]),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(size.width * .3),
                                bottomLeft: Radius.circular(size.width * .3),
                              )),
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * .04),
                          ),
                        ),
                        Container(
                            width: size.width * .36,
                            height: size.width * .25,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffA7A6A8),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(size.width * .3),
                                  bottomRight: Radius.circular(size.width * .3),
                                )),
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * .04,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
