import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/utils/my_data.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/models/skill_model.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/widgets/skill_iteam.dart';

class SkillsSectionDesk extends StatelessWidget {
  const SkillsSectionDesk({super.key, required this.iteamNum, required this.aspectRatio, this.divider, required this.scrollKey});
  final int iteamNum;
  final double? divider;
  final double aspectRatio;
final GlobalKey scrollKey ;
  @override
  Widget build(BuildContext context) {
    return 
    // SizedBox(
    //   height: MediaQuery.sizeOf(context).height*0.5,
    //   child: 
      // SizedBox(height: MediaQuery.sizeOf(context).height,
      //   child:
         Column(
          key: scrollKey,
          spacing: 20,children: [
          SectionName(firstnane: 'My', secondname: "Skills",divider: divider,),
          // SizedBox(
          //  height: MediaQuery.sizeOf(context).height*0.5,
          //   child: 
            GridView.builder(
              itemCount:MyData.skills.length,
              
              shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                  
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: aspectRatio,
                crossAxisCount: iteamNum,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
               ),
                itemBuilder: (context, index) => SkillIteam(skillModel: MyData.skills[index],),),
          
        ],);
  }
}