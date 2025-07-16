import 'package:flutter/material.dart';
import 'package:pharmaapp/provider/cart_provider.dart';
import 'package:pharmaapp/views/WelcomePage.dart';
import 'package:pharmaapp/views/categories.dart';
import 'package:provider/provider.dart';
import 'package:pharmaapp/provider/user_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Provider App',
      debugShowMaterialGrid:  false,
      home: CategoriesPage(),
      debugShowCheckedModeBanner: false,
    );
 
  }
}