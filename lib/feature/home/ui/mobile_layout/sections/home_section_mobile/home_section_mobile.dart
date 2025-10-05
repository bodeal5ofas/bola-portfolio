import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/animated_image.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/contact_method.dart';
// import 'package:portfolio/core/utils/app_colors.dart';
// import 'package:portfolio/core/utils/app_styles.dart';

class HomeSectionMobile extends StatelessWidget {
  const HomeSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height:  MediaQuery.sizeOf(context).height *0.1,),
            Center(child: AnimatedImage()),
            SizedBox(height:  MediaQuery.sizeOf(context).height *0.05,),
            Center(child: Text("Bola Rafaat",style: AppStyles.bold20.copyWith(color: AppColors.primaryColor),)),
          Center(
            child: DefaultTextStyle(
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
          ),
          SizedBox(height:  MediaQuery.sizeOf(context).height *0.05,),
          ContactMethod(),
          ],
        ),
      ),
    );
  }
}