import 'package:flutter/material.dart';
import 'package:pharmaapp/components/productCard.dart';
import 'package:pharmaapp/models/product_model.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';

class Skincarepage extends StatelessWidget {
  Skincarepage({super.key});

  final List<ProductModel> items = [
    ProductModel(
      name: "StarVille facial cleanser Gel",
      imagePath: "./images/StarVille facial Cleanser Gel.jpg",
      description: "StarVille facial cleanser Gel is used to cleanse and refresh the skin.",
      price: 125.0,
    ),
    ProductModel(
      name: "CARE & MORE",
      imagePath: "./images/CARE and more.jpg",
      description: "CARE & MORE is a moisturizing cream for dry skin.",
      price: 45,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryHeaderColor,
        title: Text("Skin Care", style: AppTextStyles.titleMedium),
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
