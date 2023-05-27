import 'package:flutter/material.dart';

import '../data/my_colors.dart';

class MyButtonStyle extends StatelessWidget {
  String btnText;
  Widget onpressed;
  MyButtonStyle(this.btnText, this.onpressed);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, 40),
            // backgroundColor: MyColors.purple2,
            backgroundColor: MyColors.purple,
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              // side: BorderSide(color: MyColors.purple)
            )

            // shape: MaterialStateProperty.   .all<RoundedRectangleBorder>(
            //         RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(18.0),
            //             side: BorderSide(color: MyColors.broun)))
            ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return onpressed;
          }));
        },
        child: Text(
          btnText,
          // style: TextStyle(
          //   backgroundColor: MyColors.broun,
          // ),
        ));
  }
}




  // ElevatedButton(
            //     style: ButtonStyle(
            //         backgroundColor: MaterialStateColor.resolveWith(
            //             (states) => MyColors.broun),
            //         padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(18.0),
            //                 side: BorderSide(color: MyColors.broun)))),

            //     // style: ElevatedButton.styleFrom(

            //     //   backgroundColor: MyColors.broun,
            //     //   minimumSize: Size.fromHeight(
            //     //       40), // fromHeight use double.infinity as width and 40 is the height
            //     // ),

            //     // style: ButtonStyle(
            //     //   // alignment: Alignment.bottomCenter,
            //     //   backgroundColor:
            //     //       MaterialStateColor.resolveWith((states) => MyColors.broun),
            //     //   // maximumSize: MaterialStateProperty.all(Size(500, 100)),
            //     //   // minimumSize: MaterialStateProperty.all(Size.infinite),
            //     //   // textStyle: ,
            //     //   // padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
            //     //   // padding: EdgeInsets.symmetric(vertical: 10),
            //     //   // side: ,shadowColor: ,

            //     //   // fixedSize: MaterialStateProperty.all(
            //     //   //     Size(double.infinity, double.infinity))
            //     // ),

            //     onPressed: () {},
            //     child: Text(
            //       "Login",
            //       // style: TextStyle(
            //       //   backgroundColor: MyColors.broun,
            //       // ),
            //     )),



