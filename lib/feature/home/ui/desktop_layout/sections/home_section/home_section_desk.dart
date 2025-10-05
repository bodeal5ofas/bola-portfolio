import 'package:flutter/material.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/animated_image.dart';
//import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/appbar_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/contact_method.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/home_info_desk.dart';

class HomeSectionDesk extends StatelessWidget {
  const HomeSectionDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.sizeOf(context).height,
    child:Padding(
      padding:  EdgeInsets.only(left: MediaQuery.sizeOf(context).width *0.1),
      child: Row(
        
        spacing: MediaQuery.sizeOf(context).width *0.1,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // Align(child: AppBarDesk()),
              SizedBox(height:  MediaQuery.sizeOf(context).height *0.1,),
              HomeInfoDesk(),
              SizedBox(height: 15,),
              ContactMethod()
            ],
          ),
         AnimatedImage(),
        ],
      ),
    ) ,
    );
  }
}