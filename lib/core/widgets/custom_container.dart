import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(color: AppColors.lightBackgroundColor,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppColors.primaryColor,
      width: 1.5,)
      
      ,),
      child: Column(children: [
        Text(title,
        style: AppStyles.bold20.copyWith(color: Colors.white,fontSize: 16),),
      ],),
    );
  }
}