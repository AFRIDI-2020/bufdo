import 'package:bufdo/demo_designs/back_button.dart';
import 'package:bufdo/demo_designs/offer_card.dart';
import 'package:bufdo/demo_designs/page_title.dart';
import 'package:bufdo/demo_designs/product_demo.dart';
import 'package:bufdo/demo_designs/red_folder.dart';
import 'package:bufdo/sub_pages/product_detail.dart';
import 'package:bufdo/sub_pages/your_list.dart';
import 'package:flutter/material.dart';

class WishListNav extends StatefulWidget {
  const WishListNav({Key? key}) : super(key: key);

  @override
  _WishListNavState createState() => _WishListNavState();
}

class _WishListNavState extends State<WishListNav> {
  List<String> testList = [
    'wife',
    'Eid',
    'For Children',
    'Brother',
  ];
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
            size.width * .045, size.width * .28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              child: Row(
                children: [
                  AppBackButton().getBackButton(context),
                  Container(
                      alignment: Alignment.center,
                      width: size.width * .8,
                      padding: EdgeInsets.fromLTRB(0, 0, size.width * .02, 0),
                      child: PageTitle().getPageTitle(context, 'Wish List')),
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
            Text(
              'Your List (3)',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * .038),
            ),
            SizedBox(
              height: size.width * .03,
            ),
            Container(
                width: size.width,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => YourList()));
                    },
                    child: RedFolder().getRedFolder(context, testList))),
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
              height: size.width * .01,
            ),
            Row(
              children: [
                Text(
                  'All products',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * .038),
                ),
                Expanded(
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.edit))),
              ],
            ),
            SizedBox(
              height: size.width * .01,
            ),
            Container(
              width: size.width,
              child: Divider(
                color: Color(0xff85848A),
                height: size.width * .01,
              ),
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
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductDetail()));
                              },
                              child: ProductDemo().getProductDemo(context)),
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
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail()));
                          },
                          child: ProductDemo().getProductDemo(context)),
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
                        color: Color(0xff85848A), fontSize: size.width * .038),
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
          ],
        ),
      ),
    );
  }
}
