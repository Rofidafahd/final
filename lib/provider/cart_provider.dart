import 'package:flutter/material.dart';
import 'package:pharmaapp/models/product_model.dart';



class CartProvider extends ChangeNotifier {
  List<ProductModel> _cartItems = [];

  List<ProductModel> get cartItems => _cartItems;

  void addToCart(ProductModel product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(ProductModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
void removeItem(ProductModel item) {
    _cartItems.remove(item);
    notifyListeners();
  }
  double get totalAmount {
    return _cartItems.fold(0, (total, item) => total + item.price);
  }
}