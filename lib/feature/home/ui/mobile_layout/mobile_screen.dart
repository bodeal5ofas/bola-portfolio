//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/service_section/service_section.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/sections/about_section_mobile/about_section_mobile.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/sections/contact_section_mobile/contact_section_mobile.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/sections/home_section_mobile/home_section_mobile.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/sections/projects_section_mobile/projects_section_mobile.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/sections/services_section_mobile/services_section_mobile.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/sections/skills_section_mobile/skills_section_mobile.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';
//import 'package:portfolio/feature/home/ui/mobile_layout/sections/home_section/widgets/menu_button.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final List<Widget> sections =const [
    HomeSectionMobile(),
    AboutSectionMobile(),
    SkillsSectionMobile(),
    ServicesSectionMobile(),
    ProjectsSectionMobile(),
    ContactSectionMobile(),
  ];
  @override
  Widget build(BuildContext context) {
  // log(MediaQuery.sizeOf(context).width.toString());
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: AppColors.secondaryColor,
        drawer: Drawer(
            
          backgroundColor: AppColors.secondaryColor,  
          child: CustomDrawer(),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: Text('BR',style: AppStyles.bold20.copyWith(color: AppColors.primaryColor),),
          centerTitle: true,
          // actions: [
          //   MenuButton(),
          // ],
        ),
        body: sections[context.watch<DeskProvider>().currentIndex],
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //   HomeSectionMobile(),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}