import 'package:flutter/material.dart';

class GiftCategoryBG {
  Widget getGiftCategoryBg(BuildContext context, List<String> giftCategories,
      List<String> iconList, int number_of_items) {
    Size size = MediaQuery.of(context).size;

    return GridView.builder(
      itemCount: number_of_items,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: size.width * .04,
      ),
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff288E9A),
                  borderRadius:
                      BorderRadius.all(Radius.circular(size.width * .04))),
              child: Padding(
                padding: EdgeInsets.all(size.width * .02),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: EdgeInsets.all(size.width * .02),
                    child: Image.asset('${iconList[index]}'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.width * .01,
            ),
            Flexible(
              child: Container(
                  width: size.width * .3,
                  child: Text(
                    '${giftCategories[index]}',
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        );
      },
    );
  }
}
