import 'package:flutter/material.dart';
import 'package:pharmaapp/components/categoryCard.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';
import 'package:pharmaapp/views/categories/babycarePage.dart';
import 'package:pharmaapp/views/categories/haircarePage.dart';
import 'package:pharmaapp/views/categories/medicinePage.dart';
import 'package:pharmaapp/views/my_cart.dart';
import 'package:pharmaapp/views/categories/skincarePage.dart';
import 'package:pharmaapp/views/categories/vitaminesPage.dart';
import 'package:pharmaapp/views/categories/devicesPage.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar( 
        leading:IconButton(onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCart()),
          );
        }  , icon: Icon(Icons.shopping_cart, color: Colors.white)), 
        centerTitle: true,
        title: Text('Categories', style: AppTextStyles.titleMedium),
        backgroundColor: AppColors.secondaryHeaderColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            CategoryCard(
              title: 'Skin Care',
              imagePath: 'images/skincare.jpg',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Skincarepage()),
              ),
            ),
            CategoryCard(
              title: 'Medicines',
              imagePath: 'images/medicine.jpg',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicinePage()),
              ),
            ),
            CategoryCard(
              title: 'Vitamins',
              imagePath: 'images/vitamines.jpg',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Vitaminespage()),
              ),
            ),
            CategoryCard(
              title: 'Devices',
              imagePath: 'images/device.jpg',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Devicespage()),
              ),
            ),
            CategoryCard(
              title: 'Hair Care',
              imagePath: 'images/haircare.jpg',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Haircarepage()),
              ),
            ),
            CategoryCard(
              title: 'Baby Care',
              imagePath: 'images/babycare.jpg',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Babycarepage()),
              ),
            ),
          ],
        ),
    
      ),
      
    );
  }
}
