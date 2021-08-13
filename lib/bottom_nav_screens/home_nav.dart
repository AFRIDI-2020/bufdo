import 'package:bufdo/demo_designs/gift_category_bg.dart';
import 'package:bufdo/demo_designs/offer_card.dart';
import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  TextEditingController _searchController = TextEditingController();
  List<String> _general_gift_categories = [
    'Jewelry & Accessories',
    'Beauty & care',
    'Arts & Carts',
    'Home & Appliances',
    'Computers & Accessories',
    'Outdoor Sports',
    'Toys & Entertainment',
    'Personalised'
  ];

  List<String> _special_gift_categories = [
    'Him',
    'Her',
    'Kids',
    'House warming',
    'Anniversary',
    'Wedding',
    'Birth day',
    'Personalised'
  ];

  List<String> _feature_icons_list = [
    'assets/boy.png',
    'assets/girl.png',
    'assets/baby.png',
    'assets/home_2.png',
    'assets/gift_black_1.png',
    'assets/ring.png',
    'assets/ring.png',
    'assets/ellipse.png',
  ];

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      key: _scaffoldKey,
      drawer: Drawer(),
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.fromLTRB(size.width * .045, 0, 0, 0),
          child: InkWell(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/menu.png',
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Container(
          width: size.width * .3,
          child: Image.asset(
            'assets/logo.png',
          ),
        ),
        actions: [
          Container(
            width: size.width * .3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, size.width * .045, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/cart.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .025,
                  ),
                  Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/notification.png',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0.0,
                          right: -5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: size.width * .04,
                            height: size.width * .04,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '33',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * .02),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: _bodyUI(context),
    );
  }

  Widget _bodyUI(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * .045, size.width * .05, size.width * .045, 0),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(size.width * .04),
                      topRight: Radius.circular(size.width * .04),
                      bottomLeft: Radius.circular(size.width * .04),
                      bottomRight: Radius.circular(size.width * .04),
                    )),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(size.width * .03, 0, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * .1,
                        child: Image.asset(
                          'assets/search.png',
                        ),
                      ),
                      SizedBox(
                        width: size.width * .03,
                      ),
                      Container(
                        width: size.width * .6,
                        child: TextFormField(
                          controller: _searchController,
                          decoration: InputDecoration(
                              hintText: 'Search product',
                              hintStyle: TextStyle(
                                color: Color(0xff131214),
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                          cursorColor: Color(0xff131214),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.width * .02),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * .04, size.width * .03, size.width * .04, 0),
              child: Container(
                width: size.width,
                height: size.width * .4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.width * .04),
                    topRight: Radius.circular(size.width * .04),
                    bottomLeft: Radius.circular(size.width * .04),
                    bottomRight: Radius.circular(size.width * .04),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.width * .04),
                    topRight: Radius.circular(size.width * .04),
                    bottomLeft: Radius.circular(size.width * .04),
                    bottomRight: Radius.circular(size.width * .04),
                  ),
                  child: Image.asset(
                    'assets/home_page_offers.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.width * .05),
            Container(
              width: size.width,
              child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: size.width * .7,
                            child: TabBar(
                              labelColor: Colors.pink,
                              unselectedLabelColor: Color(0xff85848A),
                              labelStyle: TextStyle(
                                  fontSize: size.width * .038,
                                  fontWeight: FontWeight.bold),
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorColor: Colors.pink,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(size.width * .04),
                                  topRight: Radius.circular(size.width * .04),
                                ),
                                border: Border.all(color: Colors.pink),
                                color: Color(0xffFAFAFA),
                              ),
                              tabs: [
                                Tab(
                                  text: 'Special Gift',
                                ),
                                Tab(
                                  text: 'General',
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: size.width * .3,
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  0, 0, size.width * .04, size.width * .02),
                              child: InkWell(
                                onTap: () {},
                                radius: size.width * .03,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      'See More',
                                      style: TextStyle(
                                        color: Color(0xff85848A),
                                        fontSize: size.width * .03,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.pink,
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            0, size.width * .07, 0, size.width * .02),
                        width: size.width,
                        height: size.width * .65,
                        color: Color(0xffFAFAFA),
                        child: TabBarView(
                          children: [
                            GiftCategoryBG().getGiftCategoryBg(
                                context,
                                _special_gift_categories,
                                _feature_icons_list,
                                8),
                            GiftCategoryBG().getGiftCategoryBg(
                                context,
                                _general_gift_categories,
                                _feature_icons_list,
                                8)
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: size.width * .04,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    width: size.width * .6,
                    padding: EdgeInsets.fromLTRB(size.width * .04, 0, 0, 0),
                    child: Text(
                      'Feature categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * .05,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  width: size.width * .4,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.fromLTRB(0, 0, size.width * .04, 0),
                  child: Text(
                    'See More',
                    style: TextStyle(
                        color: Color(0xff85848A), fontSize: size.width * .03),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.width * .03,
            ),
            Container(
                width: size.width,
                padding: EdgeInsets.fromLTRB(0, 0, 0, size.width * .3),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.width * .35,
                      padding: EdgeInsets.fromLTRB(size.width * .04,
                          size.width * .03, size.width * .04, size.width * .03),
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: size.width * .05);
                          },
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              width: size.width * .6,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(size.width * .046)),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(size.width * .046),
                                child: Image.asset(
                                  'assets/home_page_feature.JPG',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: size.width * .04,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: size.width * .6,
                            padding:
                                EdgeInsets.fromLTRB(size.width * .04, 0, 0, 0),
                            child: Text(
                              'Hand picked',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * .05,
                                  fontWeight: FontWeight.w600),
                            )),
                        Container(
                          width: size.width * .4,
                          alignment: Alignment.centerRight,
                          padding:
                              EdgeInsets.fromLTRB(0, 0, size.width * .04, 0),
                          child: Text(
                            'See More',
                            style: TextStyle(
                                color: Color(0xff85848A),
                                fontSize: size.width * .03),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.width * .03),
                    Container(
                      width: size.width,
                      height: size.width * .6,
                      padding: EdgeInsets.fromLTRB(size.width * .04,
                          size.width * .03, size.width * .04, size.width * .03),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: size.width * .03);
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return OfferCard().getOfferCard(context);
                        },
                      ),
                    ),
                    SizedBox(height: size.width * .02),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: size.width * .6,
                            padding:
                                EdgeInsets.fromLTRB(size.width * .04, 0, 0, 0),
                            child: Text(
                              'Hand picked',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * .05,
                                  fontWeight: FontWeight.w600),
                            )),
                        Container(
                          width: size.width * .4,
                          alignment: Alignment.centerRight,
                          padding:
                              EdgeInsets.fromLTRB(0, 0, size.width * .04, 0),
                          child: Text(
                            'See More',
                            style: TextStyle(
                                color: Color(0xff85848A),
                                fontSize: size.width * .03),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.width * .03),
                    Container(
                      width: size.width,
                      height: size.width * .6,
                      padding: EdgeInsets.fromLTRB(size.width * .04,
                          size.width * .03, size.width * .04, size.width * .03),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: size.width * .03);
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return OfferCard().getOfferCard(context);
                        },
                      ),
                    )
                  ],
                )),
          ]),
        ));
  }
}
