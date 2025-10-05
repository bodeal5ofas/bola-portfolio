import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class CustomBarTextButton extends StatelessWidget {
  const CustomBarTextButton({super.key, required this.title, this.onPressed});
final String title;
final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(title,style: AppStyles.semiBold16.copyWith(color: AppColors.primaryColor),),);
  }
}