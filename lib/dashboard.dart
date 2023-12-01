import 'package:flutter/material.dart';

import 'package:retailpro_v1/screens/categories.dart';
import 'package:retailpro_v1/screens/checkout.dart';
import 'package:retailpro_v1/screens/products.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(flex: 3, child: CheckOutPage()),
          Expanded(flex: 2, child: CategoriesPage()),
          Expanded(flex: 5, child: ProductPage())
        ],
      ),
    );
  }
}
