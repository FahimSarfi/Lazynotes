import 'package:email_password_login/model/product_model.dart';
import 'package:email_password_login/view/widgets/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../widgets/app_column_copy.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({Key? key, required this.imageString})
      : super(key: key);
  final String imageString;

  @override
  Widget build(BuildContext context) {
    ProductModel productModel = ProductModel(
        name: "Corsair RAM",
        image: imageString,
        description: "8x2 3200Mhz",
        price: "1200");
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imageString))),
            )),
        Positioned(
          top: 45,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_checkout)
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 320,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppColumnCopy(
                  text: productModel.name.toString(),
                  text2: "Rent Now",
                ),
                SizedBox(
                  height: 20,
                ),
                BigText(text: "Description"),
                SizedBox(
                  height: 20,
                ),
                BigText(
                  text: productModel.description.toString(),
                  size: 12,
                ),
                SizedBox(
                  height: 20,
                ),
                BigText(
                  text: "Price: TK" + productModel.price.toString(),
                  size: 15,
                ),
                SizedBox(
                  height: 20,
                ),
                BigText(
                  text: "Duration: 12 month",
                  size: 15,
                ),
              ],
            )),
      ],
    ));
  }
}
