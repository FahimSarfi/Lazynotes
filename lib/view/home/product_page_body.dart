import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';
import '../product/popular_product_detail.dart';
import '../messages/success.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Popular", size: 27),
            ],
          )),
      Container(
        height: 900,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              String imageString =
                  "assets/image/product" + (index % 6).toString() + ".png";
              return Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white38,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(imageString))),
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Color.fromARGB(255, 71, 71, 71),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(
                                  text: "Corsair RAM 16GB ",
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    IconAndTextWidget(
                                        icon: Icons.location_on,
                                        text: "Dhaka",
                                        iconcolor: AppColors.iconColor1),
                                    SizedBox(width: 1),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PopularProductDetail(
                                                      imageString: imageString,
                                                    )));
                                      },
                                      child: Text(
                                        "View Details",
                                        style: TextStyle(
                                            backgroundColor:
                                                AppColors.mainColor),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ))
                    ],
                  ));
            }),
      )
    ]);
  }

  Widget _buildPageItem(int index) {
    String imageString =
        "assets/image/product" + (index % 6).toString() + ".png";
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
        transform: matrix,
        child: Stack(
          children: [
            Container(
                height: 220,
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(imageString)))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 56, 56, 56),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0,
                            offset: Offset(0, 10)),
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0,
                            offset: Offset(-5, 0)),
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0,
                            offset: Offset(5, 0)),
                      ]),
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Corsair RAM 16GB",
                          color: Colors.black,
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
                              width: 140,
                              height: 30,
                              child: FloatingActionButton.extended(
                              label: Text(
                                "view details",
                                style: TextStyle(fontSize: 15),
                              ),
                              backgroundColor: Colors.green,
                              icon: Icon(Icons.view_list_rounded, size: 20,),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PopularProductDetail(
                                              imageString: imageString,
                                            )));
                              },
                              
                            ),
                        )],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
