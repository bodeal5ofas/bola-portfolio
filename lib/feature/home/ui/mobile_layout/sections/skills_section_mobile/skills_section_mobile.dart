import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/utils/my_data.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/skills_section_desk.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/widgets/skill_iteam.dart';

class SkillsSectionMobile extends StatelessWidget {
  const SkillsSectionMobile({super.key, required this.scrollKey});
final GlobalKey scrollKey ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: scrollKey,
      padding: const EdgeInsets.all(8.0),
      child: 
    // SizedBox(
    //   height: MediaQuery.sizeOf(context).height*0.5,
    //   child: 
      // SizedBox(height: MediaQuery.sizeOf(context).height,
      //   child:
         Column(spacing: 20,children: [
          SectionName(firstnane: 'My', secondname: "Skills",divider: 0.4,),
          // SizedBox(
          //  height: MediaQuery.sizeOf(context).height*0.5,
          //   child: 
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:MyData.skills.length,
              
              // shrinkWrap: true,
                       // physics: NeverScrollableScrollPhysics(),
                  
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.2,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
               ),
                itemBuilder: (context, index) => SkillIteam(skillModel: MyData.skills[index],),),
          
        ],),
    );
  }
}