import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _user = UserModel(
    firstName: 'John',
    lastName: 'Doe',
    phoneNumber: '1234567890',
    email: 'john.doe@example.com',
  );

  UserModel? get user => _user;

  void updateUser(UserModel user) {
    _user = user;
    notifyListeners();
  }

  void clearUser() {
    _user = null;
    notifyListeners();
  }
}