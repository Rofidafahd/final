import 'package:flutter/material.dart';
import 'package:pharmaapp/components/productCard.dart';
import 'package:pharmaapp/models/product_model.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';

class Babycarepage extends StatelessWidget {
  Babycarepage({super.key});

  final List<ProductModel> items = [
    ProductModel(
      name: "Baby Cream",
      imagePath: "./images/Baby Cream.jpg",
      description: "Baby Cream is used to moisturize and protect a baby's delicate skin.",
      price: 45.0,
    ),
    ProductModel(
      name: "Gohnsons Baby Oil",
      imagePath: "./images/Baby Oil.jpg",
      description: "Gohnsons Baby Oil is used to moisturize and protect a baby's skin.",
      price: 145.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryHeaderColor,
        title: Text("Baby Care", style: AppTextStyles.titleMedium),
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
