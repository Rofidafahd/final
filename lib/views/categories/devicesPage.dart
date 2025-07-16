import 'package:flutter/material.dart';
import 'package:pharmaapp/components/productCard.dart';
import 'package:pharmaapp/models/product_model.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';

class Devicespage extends StatelessWidget {
  Devicespage({super.key});

  final List<ProductModel> items = [
    ProductModel(
      name: "ACCU-CHEK Active",
      imagePath: "./images/ACCUCHEK.jpg",
      description: "ACCU-CHEK Active is used for monitoring blood glucose levels.",
      price: 650,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryHeaderColor,
        title: Text("Devices", style: AppTextStyles.titleMedium),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ProductCard(productModel: items[index]);
        },
      ),
    );
  }
}
