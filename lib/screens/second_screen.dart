import 'package:flutter/material.dart';
import 'package:flutter_laptop_store_ui/tools/radius.dart';

import '../tools/colors.dart';
import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const desc =
        'Products with electrical plugs are designed for use in the US. Outlets and voltage differ internationally and this product may require an adapter or converter for use in your destination.';
    return Container(
      color: color2,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
              vertical: height * 0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Card(
                        color: Colors.white,
                        shape: getShapeWidget(context, 0.5),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.02),
                          child: const Icon(
                            Icons.arrow_back,
                            color: color5,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      decoration: BoxDecoration(
                        color: color3,
                        borderRadius: getBorderRadiusWidget(context, 0.04),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Ask Seller',
                            style: textBlackStyle6,
                          ),
                          SizedBox(width: width * 0.03),
                          const Icon(
                            Icons.chat_outlined,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                SizedBox(
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ProArt Studiobook',
                        style: textBlackStyle1,
                      ),
                      SizedBox(height: height * 0.01),
                      const Text(
                        'Type Pro 17 w700',
                        style: textGreyStyle2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Image.asset(
                  'pic1.png',
                  width: width * 0.65,
                ),
                SizedBox(
                  width: width * 0.6,
                  height: height * 0.09,
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          width: width * 0.5,
                          height: height * 0.09,
                          child: Row(
                            children: [
                              Expanded(
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: width * 0.01),
                                    padding: EdgeInsets.all(width * 0.01),
                                    decoration: BoxDecoration(
                                      color: color3,
                                      borderRadius:
                                          getBorderRadiusWidget(context, 0.03),
                                    ),
                                    child: Image.asset('pic5.png'),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.01),
                                  padding: EdgeInsets.all(width * 0.01),
                                  decoration: BoxDecoration(
                                    color: color3,
                                    borderRadius:
                                        getBorderRadiusWidget(context, 0.03),
                                  ),
                                  child: Image.asset('pic1.png'),
                                ),
                              ),
                              Expanded(
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: width * 0.01),
                                    padding: EdgeInsets.all(width * 0.01),
                                    decoration: BoxDecoration(
                                      color: color3,
                                      borderRadius:
                                          getBorderRadiusWidget(context, 0.03),
                                    ),
                                    child: Image.asset('pic6.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: height * 0.02,
                        child: Card(
                          shape: getShapeWidget(context, 5),
                          color: color2,
                          child: const Icon(
                            Icons.arrow_left,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: height * 0.02,
                        child: Card(
                          shape: getShapeWidget(context, 5),
                          color: color2,
                          child: const Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Container(
                  width: width,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        color4,
                        color3,
                      ],
                    ),
                    borderRadius: getBorderRadiusWidget(context, 0.03),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          margin: EdgeInsets.symmetric(
                            horizontal: width * 0.015,
                            vertical: height * 0.002,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: getBorderRadiusWidget(context, 0.03),
                            color: color1,
                          ),
                          child: Image.asset(
                            'logo.png',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(left: width * 0.03),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Asus Official Store',
                                style: textBlackStyle4,
                              ),
                              Text(
                                'view store',
                                style: textGreyStyle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: Card(
                            shape: getShapeWidget(context, 0.02),
                            color: Colors.white,
                            child: Icon(
                              Icons.arrow_right,
                              color: color5,
                              size: width * 0.07,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Overview',
                          style: textBlackStyle4,
                        ),
                        Container(
                          padding: EdgeInsets.all(width * 0.01),
                          decoration: BoxDecoration(
                            color: color5,
                            borderRadius: getBorderRadiusWidget(context, 5),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Spesification',
                      style: textGreyStyle1,
                    ),
                    const Text(
                      'Review',
                      style: textGreyStyle1,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                const Text(
                  desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textGreyStyle1,
                  textAlign: TextAlign.left,
                ),
                const Icon(Icons.arrow_drop_down),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Price',
                          style: textGreyStyle2,
                        ),
                        Text(
                          '\$2338,1',
                          style: textBlackStyle3,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        fixedSize: Size(width * 0.5, height * 0.065),
                        shape: getShapeWidget(context, 0.03),
                        primary: color2,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add to Cart',
                        style: textWhiteStyle1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
