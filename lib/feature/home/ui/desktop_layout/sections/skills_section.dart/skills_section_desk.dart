import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/models/skill_model.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/widgets/skill_iteam.dart';

class SkillsSectionDesk extends StatelessWidget {
  const SkillsSectionDesk({super.key, required this.iteamNum, required this.aspectRatio, this.divider});
  final int iteamNum;
  final double? divider;
  final double aspectRatio;
final List<SkillModel> skills=const [
  SkillModel(title: 'Flutter', image: 'assets/flutter_logo.svg'),
  SkillModel(title: 'Dart', image: 'assets/dart_logo.svg'),
  SkillModel(title: 'Firebase', image: 'assets/firebase_logo.svg'),
  SkillModel(title: 'Git', image: 'assets/git_logo.svg'),
  SkillModel(title: 'Data Structure', image: 'assets/data_strucure_logo.svg'),
  SkillModel(title: 'OPP', image: 'assets/oop_logo.svg'),
  SkillModel(title: 'RESTful APIs', image: 'assets/api-svgrepo-com.svg',),
  SkillModel(title: 'State Management (Provider, Bloc)', image: 'assets/bloc-opened-svgrepo-com.svg',),
  SkillModel(title: 'Clean Code', image: 'assets/clean-code-svgrepo-com.svg',),
  SkillModel(title: 'Responsive & Adaptive UI', image: 'assets/responsive-tablet-svgrepo-com.svg',),
  SkillModel(title: 'C++', image: 'assets/c++.svg',),
  SkillModel(title: 'Local Storage', image: 'assets/storage-card-two-svgrepo-com.svg'),
  SkillModel(title: 'Testing & Debugging', image: 'assets/usability-testing-svgrepo-com.svg',),

];
  @override
  Widget build(BuildContext context) {
    return 
    // SizedBox(
    //   height: MediaQuery.sizeOf(context).height*0.5,
    //   child: 
      // SizedBox(height: MediaQuery.sizeOf(context).height,
      //   child:
         Column(spacing: 20,children: [
          SectionName(firstnane: 'My', secondname: "Skills",divider: divider,),
          // SizedBox(
          //  height: MediaQuery.sizeOf(context).height*0.5,
          //   child: 
            Expanded(
              child: GridView.builder(
                itemCount: skills.length,
                
                // shrinkWrap: true,
                         // physics: NeverScrollableScrollPhysics(),
                    
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: aspectRatio,
                  crossAxisCount: iteamNum,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                 ),
                  itemBuilder: (context, index) => SkillIteam(skillModel: skills[index],),),
            ),
          
        ],);
  }
}