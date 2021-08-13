import 'package:bufdo/demo_designs/back_button.dart';
import 'package:bufdo/demo_designs/offer_card.dart';
import 'package:bufdo/demo_designs/page_title.dart';
import 'package:bufdo/demo_designs/product_demo.dart';
import 'package:flutter/material.dart';

class YourList extends StatefulWidget {
  const YourList({Key? key}) : super(key: key);

  @override
  _YourListState createState() => _YourListState();
}

class _YourListState extends State<YourList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: _bodyUI(context)),
    );
  }

  Widget _bodyUI(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: EdgeInsets.fromLTRB(size.width * .045, size.width * .045,
                size.width * .045, size.width * .05),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: size.width,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: AppBackButton().getBackButton(context)),
                    Container(
                        alignment: Alignment.center,
                        width: size.width * .8,
                        padding: EdgeInsets.fromLTRB(0, 0, size.width * .02, 0),
                        child: PageTitle().getPageTitle(context, 'Wife')),
                  ],
                ),
              ),
              SizedBox(
                height: size.width * .05,
              ),
              Container(
                width: size.width,
                padding:
                    EdgeInsets.fromLTRB(size.width * .1, 0, size.width * .1, 0),
                child: Text(
                  'Find your saved items and get ready to order them',
                  style: TextStyle(
                    color: Color(0xff85848A),
                    fontSize: size.width * .045,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.width * .03,
              ),
              Container(
                width: size.width,
                child: Divider(
                  color: Color(0xff85848A),
                  height: size.width * .01,
                ),
              ),
              SizedBox(
                height: size.width * .03,
              ),
              Container(
                child: ListView.builder(
                  itemCount: 3,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (index != 3 - 1) {
                      return Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.width * .035,
                            ),
                            ProductDemo().getProductDemo(context),
                            SizedBox(
                              height: size.width * .035,
                            ),
                            Container(
                              width: size.width,
                              child: Divider(
                                color: Color(0xffA7A6A8),
                                height: size.width * .01,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Column(
                      children: [
                        SizedBox(
                          height: size.width * .035,
                        ),
                        ProductDemo().getProductDemo(context),
                        SizedBox(
                          height: size.width * .06,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    'More to love',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .038),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'See More',
                      style: TextStyle(
                          color: Color(0xff85848A),
                          fontSize: size.width * .038),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: size.width * .03,
              ),
              Container(
                width: size.width,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: size.width * .04,
                        mainAxisSpacing: size.width * .03,
                        childAspectRatio: .79),
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return OfferCard().getOfferCard(context);
                    }),
              )
            ])));
  }
}
