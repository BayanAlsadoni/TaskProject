// // import 'package:final_project/splash.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // import '../../widgets/itemes_widget.dart';
// // import '../../widgets/welcomWidget.dart';

// // // class WelcomePage4 extends StatefulWidget {
// // //   @override
// // //   State<WelcomePage4> createState() => _WelcomePage4State();
// // // }

// // // class _WelcomePage4State extends State<WelcomePage4> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return WeclcomWidget(
// // //         "assets/images/image_welcome_3.png",
// // //         "Order Tracking",
// // //         "Track the order preparation process in real time and receive a",
// // //         Splash());
// // //   }
// // // }

// // // import 'package:flutter/material.dart';

// // class PageViewDemo extends StatefulWidget {
// //   // int currentPageIndex = 0;
// //   @override
// //   _PageViewDemoState createState() => _PageViewDemoState();
// // }

// // class _PageViewDemoState extends State<PageViewDemo> {
// //   int currentPageIndex = 0;
// //   // final List<Widget> pages =

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: PageView(
// //           children: [
// //             Container(
// //               color: Colors.blue,
// //               child: Center(
// //                 child: Text(
// //                   'Page 1',
// //                   style: TextStyle(color: Colors.white, fontSize: 24),
// //                 ),
// //               ),
// //             ),
// //             Container(
// //               color: Colors.green,
// //               child: Center(
// //                 child: Text(
// //                   'Page 2',
// //                   style: TextStyle(color: Colors.white, fontSize: 24),
// //                 ),
// //               ),
// //             ),
// //             Container(
// //               color: Colors.orange,
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     'Page 3',
// //                     style: TextStyle(color: Colors.white, fontSize: 24),
// //                   ),
// //                   SizedBox(height: 20),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       if (currentPageIndex == 2) {
// //                         Navigator.of(context).pushNamed('/registration');
// //                       } else {
// //                         setState(() {
// //                           currentPageIndex++;
// //                         });
// //                       }
// //                     },
// //                     child: Text('Next'),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //           onPageChanged: (index) {
// //             setState(() {
// //               currentPageIndex = index;
// //             });
// //           },
// //         ),
// //       ),
// //       bottomNavigationBar: BottomAppBar(
// //         child: Padding(
// //           padding: EdgeInsets.all(20),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //               Text(
// //                 // 'Page ${currentPageIndex + 1} of ${pages.length}',
// //                 'Page ${currentPageIndex + 1} ',
// //                 style: TextStyle(fontSize: 16),
// //               ),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   Navigator.of(context).pushNamed('/registration');
// //                 },
// //                 child: Text('Register'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class PageViewDemo extends StatefulWidget {
//   @override
//   _PageViewDemoState createState() => _PageViewDemoState();
// }

// class _PageViewDemoState extends State<PageViewDemo> {
//   int currentPageIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: PageView(
//           children: [
//             Container(
//               color: Colors.blue,
//               child: Center(
//                 child: Text(
//                   'Page 1',
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.green,
//               child: Center(
//                 child: Text(
//                   'Page 2',
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.orange,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Page 3',
//                     style: TextStyle(color: Colors.white, fontSize: 24),
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (currentPageIndex == 2) {
//                         Navigator.of(context).pushNamed('/registration');
//                       } else {
//                         setState(() {
//                           currentPageIndex++;
//                         });
//                       }
//                     },
//                     child: Text(
//                         currentPageIndex == 2 ? 'Next' : 'Next & Register'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//           onPageChanged: (index) {
//             setState(() {
//               currentPageIndex = index;
//             });
//           },
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Page ${currentPageIndex + 1} ',
//                 style: TextStyle(fontSize: 16),
//               ),
//               if (currentPageIndex != 2)
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pushNamed('/registration');
//                   },
//                   child: Text('Register'),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  int _currentPageIndex = 0;
  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page View'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Page 1'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Page 2'),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text('Page 3'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}
