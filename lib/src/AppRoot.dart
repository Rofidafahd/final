import 'package:flutter/material.dart';
import 'package:pharmaapp/views/categories.dart';
import '../views/WelcomePage.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesPage(),
    );
  }
}