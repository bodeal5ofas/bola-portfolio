import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class HomeInfoDesk extends StatelessWidget {
  const HomeInfoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Bola Rafaat",style: AppStyles.bold20.copyWith(color: AppColors.primaryColor),),
      DefaultTextStyle(
        style: AppStyles.semiBold16.copyWith(color: Colors.white),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              "And I'm  Flutter Developer",
              speed: Duration(milliseconds: 100), // سرعة الكتابة
            ),
          ],
          totalRepeatCount: 1,
          pause: Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),
   //   SizedBox(height: 10,),
      // Text.rich(TextSpan(
      //   children: [
      //     TextSpan(text: 'And I''m',style: AppStyles.semiBold16.copyWith(color: Colors.white),),
      //     TextSpan(text: ' Flutter Developer', style: AppStyles.semiBold16.copyWith(color: AppColors.primaryColor),),
      //   ]
      // ),
      //  ),
      SizedBox(height: 10,),
      Container(
        width: MediaQuery.sizeOf(context).width *0.5,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor,width: 2),
          borderRadius: BorderRadius.circular(10),
          
        ),
        child: Padding(padding: EdgeInsetsGeometry.all(10),
        child:Text('I’m a passionate Junior Flutter Developer with strong proficiency in Dart, Firebase, and MVVM architecture. I build cross-platform mobile apps with clean code, responsive UI, and real-time capabilities. I’m committed to continuous learning and thrive in collaborative environments where I can contribute to impactful solutions. My goal is to create intuitive, scalable, and performance-driven mobile applications.',
        style: AppStyles.regular12.copyWith(color: AppColors.lightGreyColor),
  
        ) ,),
      ),
    ],);
  }
}