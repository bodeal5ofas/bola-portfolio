import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/utils/my_data.dart';
import 'package:portfolio/core/widgets/section_name.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/models/project_model.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/widgets/project_widget.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:provider/provider.dart';

class ProjectsSectionMobile extends StatelessWidget {
  const ProjectsSectionMobile({super.key, required this.scrollKey});
 
final GlobalKey scrollKey ;
  @override
  Widget build(BuildContext context) {
    // return Text('Updates',style: AppStyles.bold20.copyWith(
    //   color: Colors.white
    // ),);
    return Column(
      key: scrollKey,
      children: [
      SectionName(firstnane: 'MY ', secondname: 'Projects',divider: 0.4,),
      SizedBox(height: 20,),
       Row(
         children: [
           IconButton(
                onPressed: () => context.read<DeskProvider>().projects_controller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
                icon: Icon(Icons.arrow_back,color: Colors.white,),
              ),
           Expanded(
                     child: SizedBox(
                      height: MediaQuery.sizeOf(context).height *0.6,
                       child: PageView(
                         
                        scrollDirection: Axis.horizontal,
                         controller: context.read<DeskProvider>().projects_controller,
                         children: List.generate(MyData.projects.length,
                          (index) => ProjectWidget(projectModel: MyData.projects[index],),),),
                       ),
                     ),
                      IconButton(
                 onPressed: () => context.read<DeskProvider>().projects_controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
                 icon: Icon(Icons.arrow_forward,color: Colors.white,),
               ),
         ],
       ),
               ]);
  // old code
      // ListView.builder(
      //   shrinkWrap: true,
      //   physics: NeverScrollableScrollPhysics(),
      //   itemCount:MyData.projects.length,
      //   itemBuilder: (context, index) => Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
      //     child: SizedBox(
      //       height: MediaQuery.sizeOf(context).height*0.5,
      //       child: ProjectWidget(projectModel: MyData.projects[index],),
      //       ),
      //   ),
      // ),
    
    // return CustomScrollView(
    //  // key: ValueKey(MediaQuery.of(context).size.width),
    //   slivers: [
    //             SliverToBoxAdapter(child: SectionName(firstnane: 'My', secondname: 'Projects',divider: 0.4,)),
    //     SliverToBoxAdapter(child: SizedBox(height: 20,)),
    //     SliverList(
    //       delegate: SliverChildBuilderDelegate(
    //         (context, index) => Padding(
    //           padding:
    //               const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    //           // child: SizedBox(
    //           //   height: MediaQuery.sizeOf(context).height * 0.4,
    //              child:
    //              ProjectWidget(projectModel: projects[index]),
    //           ),
            
    //         childCount: projects.length,
    //       ),
    //     ),
        // SliverList.builder(itemCount: projects.length,
        //   itemBuilder: (context, index) => Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
        //    child: 
        //     SizedBox(height:MediaQuery.sizeOf(context).height*0.4,
        //     child: ProjectWidget(projectModel: projects[index],)),))
    //  ]
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
        
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
        // Expanded(child: ListView.builder(
        //   itemCount: p`rojects.length,
        //   itemBuilder: (context, index) => Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
        //    child: 
        //     SizedBox(height:MediaQuery.sizeOf(context).height*0.4,
        //     child: ProjectWidget(projectModel: projects[index],)),)
        //     ,),),
        
        
      
    
  }
}