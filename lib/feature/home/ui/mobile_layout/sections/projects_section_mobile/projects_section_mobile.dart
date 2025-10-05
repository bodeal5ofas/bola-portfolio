import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/models/project_model.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/widgets/project_widget.dart';

class ProjectsSectionMobile extends StatelessWidget {
  const ProjectsSectionMobile({super.key});
  final List<ProjectModel> projects=const [
  // ProjectModel(title: 'Planet App', 
  // image: 'image',
  //  gitHubLink: 'gitHubLink',
  //  linkedinLink: 'linkedinLink'),
  ProjectModel(title: 'e commerce app ',
  // description: 'Shooping /MVVM', 
   image: 'assets/commerce_logo.png',
    gitHubLink: 'https://github.com/bodeal5ofas/commerce-app',
     linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_ecommerceapp-mobiledevelopment-flutter-activity-7283924953794535425-UoBb?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk',
      //icon: 'icon'
      ),
      ProjectModel(title: 'Responsive',
       image: 'assets/responsive_logo.png',
        gitHubLink: 'https://github.com/bodeal5ofas/responsive_dashboard',
         linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_flutter-dart-responsiveabrui-activity-7289047618582683648-AkI9?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk',
         ),
      ProjectModel(title: 'Movie App', 
     // description: 'description',
       image: 'assets/movies_logo.png',
       gitHubLink: 'https://github.com/bodeal5ofas/movies-app',
       linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_appdevelopment-flutter-mvvm-activity-7277050509415317504-NzeT?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk',
        ),
        ProjectModel(title: 'Bookly App',
         image: 'assets/book_logo.png',
          gitHubLink: 'https://github.com/bodeal5ofas/bokkly-app',
           linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_flutterdev-mobileappdevelopment-mvvm-activity-7274469128948641793-jqSP?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk',
           ),
           ProjectModel(title: 'News App', 
           image: 'assets/news_logo.png', 
           gitHubLink: 'https://github.com/bodeal5ofas/new_app_route',
            linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_flutter-flutterdeveloper-statemanagement-activity-7271477178431660032-2BXl?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk',
            ),
            ProjectModel(title: 'To-Do App', 
            image: 'assets/todo_logo.png',
             gitHubLink: 'https://github.com/bodeal5ofas/todo_route', 
             linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_flutter-firebase-provider-activity-7262879604808306688-19DB?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk',
             ),
             ProjectModel(title: "Islam App", 
             image:'assets/islamy_logo.png' , 
             gitHubLink: 'https://github.com/bodeal5ofas/Islamy-app',
              linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_flutter-ui-flutterdeveloper-activity-7260034480252354560-1JjM?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk'
              ),
            ProjectModel(title: "XO App",
             image: 'assets/xo_logo.png',
            // gitHubLink: gitHubLink,
             linkedinLink: 'https://www.linkedin.com/posts/bola-rafaat-b61a97264_flutter-ui-flutterabrdeveloper-activity-7258191708293632000-d9eX?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEDxxrkBQAlXBo_iW3QLD4bT0zo172HCFGk',
             ),
      ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        SectionName(firstnane: 'My', secondname: 'Projects',divider: 0.4,),
        SizedBox(height: 20,),
        // SizedBox(
        //   height: MediaQuery.sizeOf(context).height*0.6,
        //   child: ListView.builder(
            
        //     itemCount: projects.length,
        //     //itemCount: projects.length,
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) => Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        //     child: ProjectWidget(projectModel: projects[index],)),),
        // )
        Expanded(child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
           child: 
            SizedBox(height:MediaQuery.sizeOf(context).height*0.4,
            child: ProjectWidget(projectModel: projects[index],)),)
            ,),),
        
        
      ],),
    );
  }
}