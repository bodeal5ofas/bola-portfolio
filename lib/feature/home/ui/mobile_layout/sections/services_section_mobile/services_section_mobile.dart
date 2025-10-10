import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/service_section/widgets/service_widget.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:provider/provider.dart';

class ServicesSectionMobile extends StatelessWidget {
  const ServicesSectionMobile({super.key, required this.scrollKey});
final GlobalKey scrollKey ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: scrollKey,
      padding: const EdgeInsets.all(10.0),
      //child: SingleChildScrollView(
       child:  Column(
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 15,
          children: [
            SectionName(firstnane: 'My', secondname: "Services",divider: 0.4,),
           Row(
             children: [
              IconButton(
                onPressed: () => context.read<DeskProvider>().service_controller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
                icon: Icon(Icons.arrow_back,color: Colors.white,),
              ),

               Expanded(
                 child: SizedBox(
                  height: MediaQuery.sizeOf(context).height *0.6,
                   child: PageView(
                     
                    scrollDirection: Axis.horizontal,
                     controller: context.read<DeskProvider>().service_controller,
                     children: [
                      ServiceWidget(title: "Software Engineering", isMobile: true,
                    subTitle: 'I provide end-to-end software solutions tailored to business and individual needs. From requirements analysis and system design to development, I apply OOP principles and Clean Architecture to deliver scalable, high-quality, and maintainable software.'),
                         ServiceWidget(title: 'Mobile App Development',isMobile: true,
                          subTitle: 'I develop high-performance mobile applications using Flutter, seamlessly running on both iOS and Android. My focus is on delivering outstanding user experiences, responsive UI design, and integrating apps with databases, RESTful APIs, and Firebase services like authentication.'),
                    ServiceWidget(title: 'Career Branding & Professional Profiles',isMobile: true,
                     subTitle: 'I help individuals build their professional brand by creating ATS-friendly CVs, optimizing LinkedIn profiles to attract recruiters, and designing impressive Portfolios that showcase skills, projects, and achievements in a professional way.')
                    
                     ],
                   ),
                 ),
               ),
               IconButton(
                 onPressed: () => context.read<DeskProvider>().service_controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
                 icon: Icon(Icons.arrow_forward,color: Colors.white,),
               ),

             ],
           )
           //old code
            // ServiceWidget(title: "Software Engineering", 
            // subTitle: 'I provide end-to-end software solutions tailored to business and individual needs. From requirements analysis and system design to development, I apply OOP principles and Clean Architecture to deliver scalable, high-quality, and maintainable software.'),
            //      ServiceWidget(title: 'Mobile App Development',
            //       subTitle: 'I develop high-performance mobile applications using Flutter, seamlessly running on both iOS and Android. My focus is on delivering outstanding user experiences, responsive UI design, and integrating apps with databases, RESTful APIs, and Firebase services like authentication.'),
            // ServiceWidget(title: 'Career Branding & Professional Profiles',
            //  subTitle: 'I help individuals build their professional brand by creating ATS-friendly CVs, optimizing LinkedIn profiles to attract recruiters, and designing impressive Portfolios that showcase skills, projects, and achievements in a professional way.')
            
          ],
        ),
     );
       // old code
        
  }
}