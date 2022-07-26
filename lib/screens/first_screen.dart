import 'package:flutter/material.dart';
import 'package:flutter_laptop_store_ui/screens/second_screen.dart';
import 'package:flutter_laptop_store_ui/tools/colors.dart';
import 'package:flutter_laptop_store_ui/tools/radius.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: color2,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: width,
            height: height,
            padding: EdgeInsets.only(
              top: height * 0.02,
              right: width * .03,
              left: width * .03,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  color4,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: getShapeWidget(context, width),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            color: color5,
                          ),
                        ),
                      ),
                      Card(
                        shape: getShapeWidget(context, width),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: const Icon(
                            Icons.more_horiz_rounded,
                            color: color5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    width: width * 0.2,
                    height: height * 0.11,
                    decoration: BoxDecoration(
                      color: color1,
                      borderRadius: getBorderRadiusWidget(context, 0.03),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.01),
                      child: Image.asset('logo.png'),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    'Asus Official Store',
                    style: textBlackStyle3,
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: color2,
                            shape: getShapeWidget(context, 0.03),
                            fixedSize: Size(width * 0.35, height * 0.05),
                            alignment: Alignment.center),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              'Turn on',
                              style: textWhiteStyle2,
                            ),
                            Icon(
                              Icons.notifications_none_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: color3,
                            shape: getShapeWidget(context, 0.03),
                            fixedSize: Size(width * 0.25, height * 0.05),
                            alignment: Alignment.center),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              'Chat',
                              style: textBlackStyle6,
                            ),
                            Icon(
                              Icons.message_outlined,
                              color: color2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Products',
                            style: textBlackStyle4,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: height * 0.01),
                            padding: EdgeInsets.all(width * 0.012),
                            decoration: BoxDecoration(
                              color: color5,
                              borderRadius: getBorderRadiusWidget(context, 5),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Newest',
                        style: textGreyStyle1,
                      ),
                      const Text(
                        'Popular',
                        style: textGreyStyle1,
                      ),
                      const Text(
                        'Category',
                        style: textGreyStyle1,
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SecondScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        ProductWidget(
                          width: width,
                          height: height,
                          title: 'ProArt Studiobook',
                          image: 'pic1.png',
                          price: '2338,1',
                        ),
                        ProductWidget(
                          width: width,
                          height: height,
                          title: 'Zenbook Duo',
                          image: 'pic2.png',
                          price: '1217,2',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      ProductWidget(
                        width: width,
                        height: height,
                        title: 'Zenbook 13 OLED',
                        image: 'pic3.png',
                        price: '3096,96',
                      ),
                      ProductWidget(
                        width: width,
                        height: height,
                        title: 'Zenbook Pro Duo',
                        image: 'pic4.png',
                        price: '3087,97',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.price,
    required this.image,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width,
        height: height * 0.32,
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.03,
          vertical: height * 0.01,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.015,
          vertical: height * 0.01,
        ),
        decoration: BoxDecoration(
          borderRadius: getBorderRadiusWidget(context, 0.05),
          gradient: const LinearGradient(
            colors: [
              color3,
              color3,
              color4,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: width * 0.3,
            ),
            Container(
              width: width,
              height: height * 0.13,
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
                vertical: height * 0.01,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: getBorderRadiusWidget(context, 0.04),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: textBlackStyle6,
                  ),
                  const Text(
                    'asus',
                    style: textGreyStyle2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: textBlackStyle4,
                      ),
                      Card(
                        color: color4,
                        elevation: 2,
                        shape: getShapeWidget(context, 0.02),
                        child: const Icon(
                          Icons.arrow_right,
                          color: color5,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
