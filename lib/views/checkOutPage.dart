import 'package:flutter/material.dart';
import 'package:pharmaapp/models/product_model.dart';
import 'package:pharmaapp/provider/cart_provider.dart';
import 'package:pharmaapp/provider/user_provider.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';
import 'package:pharmaapp/views/orderConfirmationPage.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatefulWidget {
  final List<ProductModel> allProducts;
  const CheckoutPage({super.key, required this.allProducts});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    final selectedItems = widget.allProducts
        .where((p) => p.isSelected)
        .toList();

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: Text("Checkout", style: AppTextStyles.titleMedium),
        backgroundColor: AppColors.secondaryHeaderColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Items in your order:",
              style: AppTextStyles.bodyMediumImportant.copyWith(
                color: AppColors.secondaryHeaderColor,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: selectedItems.isEmpty
                  ? Center(
                      child: Text(
                        "No items selected",
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.secondaryHeaderColor,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: selectedItems.length,
                      itemBuilder: (context, index) {
                        final product = selectedItems[index];
                        return Card(
                          elevation: 3,
                          color: AppColors.scaffoldBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                product.imagePath,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              product.name,
                              style: AppTextStyles.bodyMediumImportant,
                            ),
                            subtitle: Text(
                              "EGP ${product.price.toStringAsFixed(2)}",
                              style: AppTextStyles.bodyMediumImportant,
                            ),
                          ),
                        );
                      },
                    ),
            ),
            SizedBox(height: 16),
            Text(
              "Phone number:",
              style: AppTextStyles.bodyMediumImportant.copyWith(
                color: AppColors.secondaryHeaderColor,
              ),
            ),
            SizedBox(height: 6),
            Text(
              userProvider.user?.phoneNumber ?? 'No number',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.secondaryHeaderColor,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Delivery Address:",
              style: AppTextStyles.bodyMediumImportant.copyWith(
                color: AppColors.secondaryHeaderColor,
              ),
            ),
            SizedBox(height: 6),
            TextField(
              controller: _addressController,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: "Enter your address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
                contentPadding: EdgeInsets.all(12),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Estimated delivery: 24 hours",
              style: AppTextStyles.bodyMediumImportant.copyWith(
                color: AppColors.secondaryHeaderColor,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.scaffoldBackgroundColor,
                minimumSize: Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: AppColors.primaryColor, width: 1),
                ),
              ),
              onPressed: () {
                final address = _addressController.text.trim();
                if (address.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please enter a delivery address")),
                  );
                  return;
                }
                for (var product in selectedItems) {
                  product.isSelected = false;
                  cartProvider.removeFromCart(product);
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OrderConfirmationPage(address: address),
                  ),
                );
              },
              child: Text(
                "Confirm Order",
                style: AppTextStyles.bodyMediumImportant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
