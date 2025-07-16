import 'package:flutter/material.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';
import 'package:pharmaapp/views/WelcomePage.dart';

class OrderConfirmationPage extends StatelessWidget {
  final String address;

  const OrderConfirmationPage({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: Text("Order Confirmed", style: AppTextStyles.titleMedium),
        backgroundColor: AppColors.secondaryHeaderColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 100,
              color: AppColors.secondaryHeaderColor,
            ),
            SizedBox(height: 24),
            Text(
              "Thank you for your order!",
              style: AppTextStyles.bodyMediumImportant.copyWith(
                color: AppColors.secondaryHeaderColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              "Your order will be delivered to:",
              style: AppTextStyles.bodyMediumImportant.copyWith(
                color: AppColors.secondaryHeaderColor,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.secondaryHeaderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                address,
                style: AppTextStyles.bodyMediumImportant.copyWith(
                  color: AppColors.secondaryHeaderColor,
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryHeaderColor,
                minimumSize: Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },
              icon: Icon(Icons.home, color: AppColors.primaryColor),
              label: Text(
                "Back to Home",
                style: AppTextStyles.bodyMediumImportant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
