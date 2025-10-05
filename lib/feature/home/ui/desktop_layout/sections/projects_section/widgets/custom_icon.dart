import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primaryColor,
      radius: 30,
      child:  CircleAvatar(
      backgroundColor: AppColors.lightGreyColor,
      radius: 25,
      child: Icon(Icons.shopify_sharp, color: AppColors.primaryColor,size: 50,),
    ));
  }
}