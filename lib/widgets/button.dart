import 'package:flutter/material.dart';
import 'package:retailpro_v1/constants/colorsconstants.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.function});
  final double width;
  final double height;
  final String text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Mycolors.primarycolor.withOpacity(0.50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ],
          )),
    );
  }
}
