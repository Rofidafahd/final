import 'package:flutter/material.dart';
import 'package:pharmaapp/components/productCard.dart';
import 'package:pharmaapp/models/product_model.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';

class MedicinePage extends StatelessWidget {
  MedicinePage({super.key});

  final List<ProductModel> items = [
    ProductModel(
      name: "Antinal 200mg",
      imagePath: "./images/medicines/Antinal.jpg",
      description: "Antinal is used to treat diarrhea and intestinal infections.",
      price: 52.0,
    ),
    ProductModel(
      name: "Aspirin protect 100mg",
      imagePath: "./images/medicines/ASPIRIN protect 100.jpg",
      description: "Aspirin protect is used for pain relief and anti-inflammatory effects.",
      price: 78.0,
    ),
    ProductModel(
      name: "FLIX",
      imagePath: "./images/medicines/FLIX.jpg",
      description: "FLIX is used for treating allergies and inflammation.",
      price: 76.0,
    ),
    ProductModel(
      name: "lamifen",
      imagePath: "./images/medicines/lamifen.jpg",
      description: "Lamifen is an antifungal medication used to treat fungal infections.",
      price: 18.0,
    ),
    ProductModel(
      name: "Otrivin",
      imagePath: "./images/medicines/Otrivin.jpg",
      description: "Otrivin is used to relieve nasal congestion.",
      price: 24.0,
    ),
    ProductModel(
      name: "Reparil Gel N",
      imagePath: "./images/medicines/Reparil Gel N.jpg",
      description: "Reparil Gel N is used for treating pain and inflammation.",
      price: 58.0,
    ),
    ProductModel(
      name: "VASTAREL MR",
      imagePath: "./images/medicines/VASTAREL MR.jpg",
      description: "VASTAREL MR is used for treating angina and improving blood flow.",
      price: 175.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryHeaderColor,
        title: Text("Medicines", style: AppTextStyles.titleMedium),
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
