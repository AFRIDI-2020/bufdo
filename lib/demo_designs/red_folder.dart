import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class RedFolder {
  Widget getRedFolder(BuildContext context, List<String> categoryList) {
    Size size = MediaQuery.of(context).size;
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: size.width * .02,
            childAspectRatio: .75),
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: categoryList.length + 1,
        itemBuilder: (context, index) {
          if (index == categoryList.length) {
            return Column(children: [
              SizedBox(
                height: size.width * .02,
              ),
              Container(
                height: size.width * .25,
                width: size.width * .25,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(size.width * .03),
                  padding: EdgeInsets.all(6),
                  child: Center(child: Icon(Icons.add, size: size.width * .12)),
                ),
              ),
            ]);
          }

          return Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size.width * .03),
                ),
                child: Container(
                  width: size.width * .3,
                  height: size.width * .28,
                  child: Image.asset(
                    'assets/folder.png',
                  ),
                ),
              ),
              SizedBox(
                height: size.width * .02,
              ),
              Text(
                '${categoryList[index]}',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              )
            ],
          );
        });
  }
}
