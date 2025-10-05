import 'package:flutter/cupertino.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/skills_section.dart/skills_section_desk.dart';

class SkillsSectionMobile extends StatelessWidget {
  const SkillsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SkillsSectionDesk(iteamNum: 2,aspectRatio: 1.5,divider: 0.4,),
    );
  }
}