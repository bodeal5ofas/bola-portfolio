import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/about_section/about_section_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/contact_section.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/home_section_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/appbar_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/custom_bar_text_button.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/projects_section.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/service_section/service_section.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/skills_section_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:provider/provider.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});
  final List<Widget> sections =const [
    HomeSectionDesk(),
    AboutSectionDesk(),
    SkillsSectionDesk(iteamNum: 3,aspectRatio: 3,),
    ServiceSection(),
    ProjectsSection(),
    ContactSection()
  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar:AppBar(title: Text('Bola Rafaat',style: AppStyles.bold20.copyWith(color: Colors.white),),backgroundColor: AppColors.secondaryColor,actions: [
        AppBarDesk(),
        ],) ,
        backgroundColor: AppColors.secondaryColor,
        body: sections[context.watch<DeskProvider>().currentIndex],
        //  CustomScrollView(
        //   slivers: [
        //     SliverToBoxAdapter(child: HomeSectionDesk()),
        //     SliverToBoxAdapter(child: AboutSectionDesk()),
        //     SliverToBoxAdapter(child: SkillsSectionDesk()),
        //   ],
        );
    
  }
}

// مثال باستخدام Scroll للـ Sections:

// final itemScrollController = ItemScrollController();

// ScrollablePositionedList.builder(
//   itemScrollController: itemScrollController,
//   itemCount: sections.length,
//   itemBuilder: (context, index) => sections[index],
// );


// وبعدين أي زرار تضغطه يعمل:

// itemScrollController.scrollTo(
//   index: 2, // يروح Section رقم 2
//   duration: Duration(seconds: 1),
// );