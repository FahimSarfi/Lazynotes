import 'dart:ffi';

import 'package:email_password_login/view/widgets/app_icon.dart';
import 'package:email_password_login/view/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../widgets/app_column_copy.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 50.0,
        ),
        Text('Success!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.green[400])),
        Container(
            margin: EdgeInsets.only(top: 35),
            //color: Colors.cyan,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Container(
                height: 100,
                width: double.maxFinite,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/product0.png")),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                    Expanded(
                        child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromARGB(255, 71, 71, 71),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BigText(
                                    text: "Nvidia GTX 3090",
                                    color: Colors.cyan,
                                  ),
                                  SmallText(
                                    text: "Available",
                                    color: Colors.lightGreen,
                                    size: 11,
                                  ),
                                  Row(
                                    children: [
                                      BigText(
                                        text: "9000tk",
                                        color: Colors.blueGrey,
                                        size: 11,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      IconAndTextWidget(
                                          icon:
                                              Icons.access_time_filled_rounded,
                                          text: "6 month",
                                          iconcolor: AppColors.mainColor),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      IconAndTextWidget(
                                          icon: Icons.remove_circle,
                                          text: "Remove",
                                          iconcolor: Colors.red),
                                    ],
                                  )
                                ],
                              ),
                            )))
                  ],
                ),
              ),
            )),
      ],
    ));
  }
}



                  // child: ListView.builder(
                  //     itemCount: 1,
                  //     itemBuilder: (_, index) {
                  //       return Container(
                  //         height: 100,
                  //         width: double.maxFinite,
                  //         child: Row(
                  //           children: [
                  //             Container(
                  //               width: 120,
                  //               height: 120,
                  //               decoration: BoxDecoration(
                  //                   image: DecorationImage(
                  //                       fit: BoxFit.cover,
                  //                       image: AssetImage(
                  //                           "assets/image/product0.png")),
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   color: Colors.white),
                  //             ),
                  //             Expanded(
                  //                 child: Container(
                  //                     height: 120,
                  //                     decoration: BoxDecoration(
                  //                       borderRadius: BorderRadius.only(
                  //                         topRight: Radius.circular(20),
                  //                         bottomRight: Radius.circular(20),
                  //                       ),
                  //                       color: Color.fromARGB(255, 71, 71, 71),
                  //                     ),
                  //                     child: Padding(
                  //                       padding: EdgeInsets.only(
                  //                           left: 15, right: 15),
                  //                       child: Column(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                         mainAxisAlignment:
                  //                             MainAxisAlignment.spaceEvenly,
                  //                         children: [
                  //                           BigText(
                  //                             text: "Nvidia GTX 3090",
                  //                             color: Colors.cyan,
                  //                           ),
                  //                           SmallText(
                  //                             text: "Available",
                  //                             color: Colors.lightGreen,
                  //                             size: 11,
                  //                           ),
                  //                           Row(
                  //                             children: [
                  //                               BigText(
                  //                                 text: "9000tk",
                  //                                 color: Colors.blueGrey,
                  //                                 size: 11,
                  //                               ),
                  //                               SizedBox(
                  //                                 width: 5,
                  //                               ),
                  //                               IconAndTextWidget(
                  //                                   icon: Icons
                  //                                       .access_time_filled_rounded,
                  //                                   text: "6 month",
                  //                                   iconcolor:
                  //                                       AppColors.mainColor),
                  //                               SizedBox(
                  //                                 width: 13,
                  //                               ),
                  //                               IconAndTextWidget(
                  //                                   icon: Icons.remove_circle,
                  //                                   text: "Remove",
                  //                                   iconcolor: Colors.red),
                  //                             ],
                  //                           )
                  //                         ],
                  //                       ),
                  //                     )))

                  //           ],
                  //         ),
                  //       );
                  //     }),