import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:retailpro_v1/commons/icon_button_widget.dart';
import 'package:retailpro_v1/constants/assets_manager.dart';
import 'package:retailpro_v1/constants/colorsconstants.dart';
import 'package:retailpro_v1/constants/font_manager.dart';
import 'package:retailpro_v1/constants/padding.dart';
import 'package:retailpro_v1/widgets/button.dart';

import '../commons/headingwidget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingTextWidget(
                    text: 'Products',
                    color: Mycolors.primarycolor,
                    fontsize: 42,
                    fontWeight: FontWeight.w500,
                  ),
                  Row(
                    children: [
                      IconButtonWidget(
                          iconData: Icons.notifications,
                          calllback: () {},
                          size: 30),
                      padding30,
                      IconButtonWidget(
                          iconData: Icons.notifications,
                          calllback: () {},
                          size: 30),
                    ],
                  )
                ],
              ),
            ),
            padding20,
            AnimatedContainer(
              width: MediaQuery.of(context).size.width / 2,
              duration: const Duration(milliseconds: 500),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 11,
                  gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: calculateCrossAxisCount(context, width))),
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: DottedBorder(
                              color: Mycolors.primarycolor,
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(4),
                              padding: const EdgeInsets.all(0),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Mycolors.primarycolor,
                                          size: MyFonts.size87,
                                        ),
                                      ],
                                    ),
                                    Text('Add Item',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22,
                                            color: Mycolors.primarycolor))
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.all(MyFonts.size10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Mycolors.backgroundcolor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  padding10,
                                  SizedBox(
                                      height: 110,
                                      child: Image.asset('images/pizza.png')),
                                  Text(Mytexts.foodname,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22,
                                          color: Mycolors.primarycolor)),
                                  Text(Mytexts.foodprice,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22,
                                          color: Mycolors.primarycolor)),
                                ],
                              ),
                            ),
                          );
                  }),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MyFonts.size87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ContainerButton(
                    width: 200,
                    height: 70,
                    text: 'Order',
                    function: () {},
                  ),
                  padding10,
                  ContainerButton(
                    width: 200,
                    height: 70,
                    text: 'Dining',
                    function: () {},
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

int calculateCrossAxisCount(BuildContext context, double width) {
  double itemWidth = 220.0;

  int crossAxisCount = (width / itemWidth).floor();
  return crossAxisCount > 0 ? crossAxisCount : 1;
}
