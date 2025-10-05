import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/contact_icon.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/contact_widget.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        SectionName(firstnane: 'Contact', secondname: 'Me',),
        SizedBox(height: 20,),
        ContactWidget(),
      ],);
    
  }
}