import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:hardware/pages/food/popular_food_detail.dart';

import '../product/popular_product_detail.dart';
import '../../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final String text2;

  const AppColumn({Key? key, required this.text, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: text,
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconAndTextWidget(
                  icon: Icons.location_on,
                  text: "Sylhet",
                  iconcolor: AppColors.iconColor1),
              SizedBox(width: 5),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PopularProductDetail(
                                imageString: "assets/image/product0.png",
                              )));
                },
                child: Text(
                  text2,
                  style: TextStyle(backgroundColor: AppColors.mainColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
