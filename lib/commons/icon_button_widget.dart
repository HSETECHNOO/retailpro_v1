import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {super.key,
      required this.iconData,
      required this.calllback,
      required this.size});
  final IconData iconData;
  final Function calllback;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          calllback();
        },
        icon: Icon(
          iconData,
          size: 30,
        ));
  }
}
