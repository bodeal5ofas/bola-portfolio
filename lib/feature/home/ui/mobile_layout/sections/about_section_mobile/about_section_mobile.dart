import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:svg_flutter/svg.dart';

class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
           SectionName(firstnane: "About", secondname: 'Me',divider: 0.4,),
           SvgPicture.asset('assets/Questions-bro.svg',
                height:MediaQuery.sizeOf(context).height*0.5,
                fit: BoxFit.fill,),
             CustomContainer(
                  title: "I am Bola Raafat, a passionate Flutter developer and problem solver with strong expertise\nin object-oriented programming (OOP), data structures, algorithms, and modern mobile\napp architectures such as MVVM and state management.\nThroughout my journey, I have built dynamic, user-friendly applications with secure\npayment integrations, efficient local storage using Hive, and robust RESTful API\nconnections. I focus on writing clean, maintainable, and scalable code that aligns with best\npractices and ensures smooth user experiences.\nI am always eager to learn, improve, and take on new challenges that push me beyond my\ncomfort zone. My ultimate goal is to combine innovation and quality to create impactful\nmobile solutions that make people’s lives easier.",
                )     
        ],),
      ),
    );
  }
}