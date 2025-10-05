//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/models/skill_model.dart';
import 'package:svg_flutter/svg.dart';

class SkillIteam extends StatelessWidget {
  const SkillIteam({super.key,required this.skillModel});
  final SkillModel skillModel;
  @override
  Widget build(BuildContext context) {
    return
    //  SizedBox(
    //   height: 70,
    //   child:
       Column(spacing: 10,children: [
        Text(skillModel.title,style: AppStyles.semiBold16.copyWith(color: Colors.white),),
        // icon
        SvgPicture.asset(skillModel.image
        ,fit: BoxFit.fill
       ,height: 50,
        ),
      ],);
    
  }
}