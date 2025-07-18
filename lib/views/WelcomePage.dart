import 'package:flutter/material.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'ButtonStyling.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:AppColors.primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Welcome to DAWAK' , style : Theme.of(context).textTheme.displayMedium),
            Image(image : AssetImage('images/welcomepag.png'),
              width: 900,
              alignment: Alignment.center,

            ),
            Text('feeling sick ? Get your DAWAK now!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
             Getbutton('Login'),
             Getbutton('Sign up'),
          ],
        ),
    );
  }
}