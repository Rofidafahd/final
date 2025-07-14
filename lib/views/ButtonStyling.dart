import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmaapp/src/AppColors.dart';
import 'package:pharmaapp/src/AppStyling.dart';

SizedBox Getbutton(String type){
  return SizedBox(
      width: 200,
      child: ElevatedButton(onPressed: (){},
          child: Text(type , style: AppTextStyles.bodyLarge),
          style: ElevatedButton.styleFrom(backgroundColor: type == 'Login' ?
                 AppColors.secondaryHeaderColor : AppColors.scaffoldBackgroundColor,
          )
      ),
  );
}