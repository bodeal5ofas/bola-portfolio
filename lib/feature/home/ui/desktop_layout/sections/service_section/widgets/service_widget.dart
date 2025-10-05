import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:provider/provider.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key, required this.title, required this.subTitle});
final String title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: AppColors.lightBackgroundColor,
        borderRadius: BorderRadius.circular(20)
        ,border: Border.all(color: AppColors.primaryColor,width: 1.5,),
        
        ),
        child: Column(children: [
          Text(title,style: AppStyles.bold20.copyWith(color: Colors.white,fontSize: 16),),
          SizedBox(height: 30,),
          Text(subTitle,style: AppStyles.semiBold16.copyWith(color: AppColors.lightGreyColor,fontSize: 14,fontWeight: FontWeight.w500),),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            context.read<DeskProvider>().setCurrentIndex(5);
          }, style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,),child: Text("Hire Me",style: AppStyles.semiBold16.copyWith(color: Colors.white),),)
        ],),
    );
  }
}