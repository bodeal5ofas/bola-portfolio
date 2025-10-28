import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/about_section/about_section_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/contact_section.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/home_section_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/appbar_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/projects_section.dart';
//import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/custom_bar_text_button.dart';
//import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/projects_section.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/service_section/service_section.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/skills_section_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:provider/provider.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  // final List<Widget> sections =const [
  @override
  Widget build(BuildContext context) {
      ScrollController scrollController = ScrollController();

    return   Scaffold(
        appBar:AppBar(title: Text('BR',style: AppStyles.bold20.copyWith(color: Colors.white),),backgroundColor: AppColors.secondaryColor,actions: [
        AppBarDesk(),
        ],) ,
        backgroundColor: AppColors.secondaryColor,
        body: //sections[context.watch<DeskProvider>().currentIndex],
        SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16,top: 8,bottom: 16),
            child: Column(children: [
              HomeSectionDesk(scrollKey: context.read<DeskProvider>().homeKey,),
              AboutSectionDesk(scrollKey: context.read<DeskProvider>().aboutKey,),
              SizedBox(height: 24,),
              SkillsSectionDesk(iteamNum: 3,aspectRatio: 3,divider: 0.46,scrollKey: context.read<DeskProvider>().skillsKey,),
              //context.read<DeskProvider>().
               ServiceSection(scrollKey: context.read<DeskProvider>().serviceKey,),
             SizedBox(height: 24,),
              ProjectsSection(scrollKey: context.read<DeskProvider>().projectsKey,),
               SizedBox(height: 24,),
              ContactSection(scrollKey: context.read<DeskProvider>().contactKey,),
            ],),
          ),
        )
        //  CustomScrollView(
        //   slivers: [
        //     SliverToBoxAdapter(child: HomeSectionDesk()),
        //     SliverToBoxAdapter(child: AboutSectionDesk()),
        //   //  SliverToBoxAdapter(child: SkillsSectionDesk(iteamNum: 3,aspectRatio: 3,divider: 0.46,)),
        //     SliverToBoxAdapter(child: ServiceSection(),),
        //     SliverToBoxAdapter(child: ProjectsSection(),),
        //     SliverToBoxAdapter(child: ContactSection(),),
        //   ],
        // )
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