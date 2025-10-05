import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, this.validator, this.controller, });
  final String hintText;
 final String? Function(String?)? validator;
 final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
        fillColor: AppColors.lightGreyColor ,
        filled: true,
        hintText: hintText,
        hintStyle: AppStyles.semiBold16,
        
       // suffixIcon: suffixIcon,
        ),
        controller: controller,
        validator:validator ,
        
    );
  }
}