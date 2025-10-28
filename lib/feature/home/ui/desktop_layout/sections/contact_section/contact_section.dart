import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/contact_icon.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/contact_widget.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, required this.scrollKey});
final GlobalKey scrollKey ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding:  EdgeInsets.symmetric(horizontal: (MediaQuery.sizeOf(context).width *0.1)),
      child: Column(
        key: scrollKey,
        children: [
          SectionName(firstnane: 'Contact', secondname: 'Me',),
          SizedBox(height: 20,),
          ContactWidget(),
        ],),
    );
    
  }
}