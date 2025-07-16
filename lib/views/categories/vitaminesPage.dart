import 'package:flutter/material.dart';
import 'package:pharmaapp/components/productCard.dart';
import 'package:pharmaapp/models/product_model.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';

class Vitaminespage extends StatelessWidget {
  Vitaminespage({super.key});

  final List<ProductModel> items = [
    ProductModel(
      name: "Omega-3plus",
      imagePath: "./images/medicines/Omega-3plus.jpg",
      description: "Omega-3plus is a dietary supplement rich in omega-3 fatty acids, beneficial for heart health.",
      price: 135,
    ),
    ProductModel(
      name: "Methyltechno",
      imagePath: "./images/Methyltechno.jpg",
      description: "Methyltechno is a supplement that supports cognitive function and mental clarity.",
      price: 135,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryHeaderColor,
        title: Text("Vitamins", style: AppTextStyles.titleMedium),
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
