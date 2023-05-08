import 'package:final_project/data/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemesWidget extends StatelessWidget {
  String title = "";
  String discription = "";
  String image = "";
  ItemesWidget(this.image, this.title, this.discription);

  @override
  Widget build(BuildContext context) {
    return
        // Expanded(
        //   child:
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              // childAspectRatio: 10
              // mainAxisExtent: 25
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: MyColors.blue_purple,
                    borderRadius: BorderRadius.circular(10)),
              );
            }
            // ),
            );
  }
}
