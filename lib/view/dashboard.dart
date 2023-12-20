import 'package:flutter/material.dart';
import 'package:retailpro_v1/widgets/categories.dart';
import 'package:retailpro_v1/widgets/checkout.dart';
import 'package:retailpro_v1/widgets/products.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  double categorywidth = 300;
  int rowsqunatity = 2;

  void onDataFromChild(double data, int rows) {
    setState(() {
      categorywidth = data;
      rowsqunatity = rows;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(
        children: [
          size.width > 1500
              ? const SizedBox(
                  width: 570,
                  child: CheckOutPage(),
                )
              : Container(),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: categorywidth,
            child: CategoriesPage(
              rowsqunatity: rowsqunatity,
              function: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MyDialog(
                      onDataFromChild: onDataFromChild,
                    );
                  },
                );
              },
            ),
          ),
          Expanded(child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            double availableWidth = constraints.maxWidth;
            return ProductPage(width: availableWidth);
          }))
        ],
      ),
    );
  }
}

class MyDialog extends StatefulWidget {
  const MyDialog({super.key, required this.onDataFromChild});
  final Function(double, int) onDataFromChild;

  @override
  // ignore: library_private_types_in_public_api
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  TextEditingController widthcontroller = TextEditingController();
  TextEditingController itemsrowcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        width: 500.0,
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: widthcontroller,
              decoration: InputDecoration(
                hintText: 'Maximum Category Width',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: itemsrowcontroller,
              decoration: InputDecoration(
                hintText: 'Items Per Row',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  elevation: 0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 200,
                  onPressed: () {
                    int? rows;
                    double? data;

                    if (widthcontroller.text.isNotEmpty) {
                      data = double.parse(widthcontroller.text.trim());
                    }

                    if (itemsrowcontroller.text.isNotEmpty) {
                      rows = int.parse(itemsrowcontroller.text.trim());
                    }

                    if (rows == null) {
                    } else if (data == null) {
                    } else {
                      widget.onDataFromChild(data, rows);
                    }
                    Navigator.of(context).pop();
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
