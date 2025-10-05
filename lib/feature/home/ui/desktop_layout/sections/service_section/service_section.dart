import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/service_section/widgets/service_widget.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        spacing: 15,
        children: [
          SectionName(firstnane: 'My', secondname: "Services",),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: ServiceWidget(title: "Software Engineering", 
                subTitle: 'I provide end-to-end software solutions tailored to business and individual needs. From requirements analysis and system design to development, I apply OOP principles and Clean Architecture to deliver scalable, high-quality, and maintainable software.'),
              ),
            Expanded(
              child: ServiceWidget(title: 'Mobile App Development',
               subTitle: 'I develop high-performance mobile applications using Flutter, seamlessly running on both iOS and Android. My focus is on delivering outstanding user experiences, responsive UI design, and integrating apps with databases, RESTful APIs, and Firebase services like authentication.'),
            )
           ,Expanded(
             child: ServiceWidget(title: 'Career Branding & Professional Profiles',
              subTitle: 'I help individuals build their professional brand by creating ATS-friendly CVs, optimizing LinkedIn profiles to attract recruiters, and designing impressive Portfolios that showcase skills, projects, and achievements in a professional way.'),
           )
            ],
          ),
          
        ],
      ),
    );
  }
}