import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:retailpro_v1/constants/colorsconstants.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                      color: Mycolors.primarycolor,
                      fontFamily: 'Aeric',
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Mycolors.primarycolor,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.menu,
                        color: Mycolors.primarycolor,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 11,
                  gridDelegate:
                      (const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4)),
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
                                          size: 100,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Add New Item',
                                          style: TextStyle(
                                              color: Mycolors.primarycolor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Mycolors.backgroundcolor),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      height: 150,
                                      child: Image.asset('images/pizza.png')),
                                  const Text('Humber SeaFood'),
                                  const Text(
                                    '\$50',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
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
              height: 100,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        color: Mycolors.backgroundcolor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search Item',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Mycolors.primarycolor,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Mycolors.primarycolor.withOpacity(0.50)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Mycolors.primarycolor.withOpacity(0.50)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dinning',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
