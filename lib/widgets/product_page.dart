import 'package:flutter/material.dart';
import 'package:ricoz_assignment/widgets/custom_bottom_navbar.dart';
import 'package:ricoz_assignment/widgets/cutom_appbar.dart';
import 'package:ricoz_assignment/widgets/product_list.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: const ProductList(),
    );
  }
}
