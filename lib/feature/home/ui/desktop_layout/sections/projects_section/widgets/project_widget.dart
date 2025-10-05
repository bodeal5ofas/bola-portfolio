//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/lanch_url_func.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/models/project_model.dart';
//import 'package:portfolio/feature/home/ui/desktop_layout/sections/projects_section/widgets/custom_icon.dart';
//import 'package:svg_flutter/svg_flutter.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key, required this.projectModel});
final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Container(
  //    width: MediaQuery.sizeOf(context).width/4,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(projectModel.image,),fit: BoxFit.fill,),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primaryColor,width: 1.5,),
      ),
      child:  Align(
          alignment: Alignment.bottomCenter,
          child: projectModel.gitHubLink==null? ElevatedButton(onPressed: ()async{
                //linkedin
                await launchUrlFunc(projectModel.linkedinLink);
                
              },
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,
              side:BorderSide(color: AppColors.primaryColor),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
              
              ),
              child: Text("Watch Video",style: AppStyles.semiBold16.copyWith(color: AppColors.primaryColor,fontSize: 14),),)
      
          : Row(
            spacing: 10,
            children: [
              ElevatedButton(onPressed: ()async{
                //github
                await launchUrlFunc(projectModel.gitHubLink!);
                
              },
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,),
               child: Text('View Project',style: AppStyles.semiBold16.copyWith(color: Colors.white,fontSize: 14),),
               ),
               ElevatedButton(onPressed: ()async{
                //linkedin
                await launchUrlFunc(projectModel.linkedinLink);
                
              },
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,
              side:BorderSide(color: AppColors.primaryColor),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
              
              ),
              child: Text("Watch Video",style: AppStyles.semiBold16.copyWith(color: AppColors.primaryColor,fontSize: 14),),),
            ],
          ),
        ),
    //   child: Column(
    //     spacing: 20,
    //     children: [
    
    //  //   CustomIcon(),
    //   //  Text('Eccomerce App',style: AppStyles.bold20.copyWith(color: Colors.white,fontSize: 16),),
    //     Container(
    //       padding: EdgeInsets.symmetric(horizontal:  15,vertical: 5),
    //       decoration: BoxDecoration(
    //         border: Border.all(color: AppColors.primaryColor,width: 1.5,),
    //         color: Color(0xff122b35),
    //         borderRadius: BorderRadius.circular(28),
    //       ),
    //       child: Text('Api/MVVM',style: AppStyles.regular12.copyWith(color: AppColors.primaryColor, ),),
    //     ),
    //     Spacer(),
    //     Align(
    //       alignment: Alignment.bottomCenter,
    //       child: ElevatedButton(onPressed: (){},
    //       style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,),
    //        child: Text('View Project',style: AppStyles.semiBold16.copyWith(color: Colors.white,fontSize: 14),),
    //        ),
    //     ),
    //   ],),
    );
  }
}

