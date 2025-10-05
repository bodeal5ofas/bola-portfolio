import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class SectionIcon extends StatelessWidget {
  const SectionIcon({super.key, required this.icon, required this.title, this.onTap});
final IconData icon;
final String title;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,),
      child: GestureDetector(
        onTap:onTap ,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.lightGreyColor,
              ),
              child: Center(child: Icon(icon,color: AppColors.primaryColor,)),
            ),
            const SizedBox(width: 20,),
            Text(title,style: AppStyles.bold20.copyWith(color: AppColors.primaryColor),),
            const Spacer(),
            Icon(Icons.arrow_forward_ios,color: AppColors.primaryColor,) ,
          ],
        ),
      ),
    );
  }
}