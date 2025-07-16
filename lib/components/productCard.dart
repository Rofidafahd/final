import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';
import 'package:pharmaapp/provider/cart_provider.dart';
import '../models/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel productModel;

  const ProductCard({super.key, required this.productModel});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          widget.productModel.isSelected = !widget.productModel.isSelected;
        });

        if (widget.productModel.isSelected) {
          cartProvider.addToCart(widget.productModel);
        } else {
          cartProvider.removeFromCart(widget.productModel);
        }
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.productModel.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productModel.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.productModel.description,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "EGP ${widget.productModel.price.toStringAsFixed(2)}",
                          style: AppTextStyles.bodyMediumImportant.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (widget.productModel.isSelected)
            const Positioned(
              top: 8,
              left: 16,
              child: Icon(
                Icons.check_circle,
                color: AppColors.primaryColor,
                size: 28,
              ),
            ),
        ],
      ),
    );
  }
}
