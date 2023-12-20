import 'package:flutter/material.dart';
import 'package:retailpro_v1/constants/colorsconstants.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int? selecteditem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Mycolors.whiteColor,
          border: Border.all(color: Colors.black12)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              trailing: Container(
                decoration: BoxDecoration(
                    color: Mycolors.backgroundcolor,
                    borderRadius: BorderRadius.circular(12)),
                height: 50,
                width: 50,
                child: const Center(
                  child: Icon(Icons.edit_outlined),
                ),
              ),
              subtitle: const Text('Alexcarry1645@gmail.com'),
              title: const Text(
                'Table 4',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [0, 1, 2]
                .map((e) => Container(
                      decoration: const BoxDecoration(color: Colors.amber),
                      height: 70,
                      width: 150,
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
