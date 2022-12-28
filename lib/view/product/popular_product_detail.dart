import 'package:email_password_login/model/product_model.dart';
import 'package:email_password_login/view/Cart/success.dart';
import 'package:email_password_login/view/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';
import '../widgets/small_text.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({Key? key, required this.imageString})
      : super(key: key);
  final String imageString;

  @override
  Widget build(BuildContext context) {
    ProductModel productModel = ProductModel(
        name: "Nvidia GTX 3090",
        image: imageString,
        description: "8x2 3200Mhz",
        price: "1200",
        duration: "6 month");
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
                AppIcon(
                  icon: Icons.arrow_back_ios_new_sharp,
                  iconSize: 24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
                AppIcon(
                  icon: Icons.shopping_cart,
                  iconSize: 24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Positioned(
              left: 20,
              right: 20,
              top: 320,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 20,
                                )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "4.5"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "12"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "Rented")
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "Dhaka",
                          iconcolor: AppColors.iconColor1),
                      SizedBox(
                        width: 10,
                      ),
                      IconAndTextWidget(
                          icon: Icons.access_time_filled_rounded,
                          text: "6 month",
                          iconcolor: AppColors.mainColor),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 70,
                        height: 30,
                        child: FloatingActionButton.extended(
                          heroTag: null,
                          label: Text(
                            "Rent",
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Success(
                                        //imageString: imageString,
                                        )));
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BigText(
                      text: "Model: " + productModel.name.toString(), size: 30),
                  SizedBox(
                    height: 25,
                  ),
                  SmallText(
                    text: productModel.description.toString(),
                    size: 18,
                    color: AppColors.yellowColor,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SmallText(
                    text: "Price: TK" + productModel.price.toString(),
                    size: 18,
                    color: AppColors.yellowColor,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  BigText(
                    text: "Duration: " + productModel.duration.toString(),
                    size: 20,
                  ),
                ],
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20 * 2),
                topRight: Radius.circular(20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.mainColor),
              child: Row(children: [
                Icon(
                  Icons.remove,
                  color: AppColors.iconColor2,
                ),
                SizedBox(
                  width: 10 / 2,
                ),
                BigText(text: "1"),
                SizedBox(
                  width: 10 / 2,
                ),
                Icon(
                  Icons.add,
                  color: AppColors.iconColor2,
                )
              ]),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: BigText(
                text: "Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.yellowColor),
            )
          ],
        ),
      ),
    );
  }
}
