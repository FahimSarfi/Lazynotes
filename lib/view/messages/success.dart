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
        body: Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            top: 320,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                BigText(
                  text: "SUCCESS! WAIT FOR RENTER RESPONSE",
                  size: 20,
                ),
              ],
            )),
      ],
    ));
  }
}
