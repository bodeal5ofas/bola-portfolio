import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:portfolio/core/utils/app_colors.dart';
//import 'package:portfolio/core/utils/app_styles.dart';

class CategotiesList extends StatelessWidget {
  const CategotiesList({super.key});
final List<String> categories=const["Education","Courses","Experience","Skills"];
  @override
  Widget build(BuildContext context) {
    return Text("data");
    // Container(
    //   decoration: BoxDecoration(color: AppColors.lightBackgroundColor,
    //   borderRadius: BorderRadius.circular(20),
    //   border: Border.all(color: AppColors.primaryColor,width: 1.5,),
    //   ),
    //   child: Row(children: 
    //     List.generate(4, (index) => Padding(padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 20),child: Text(categories[index],style: AppStyles.semiBold16.copyWith(color: AppColors.primaryColor),),)
    //   ,),
    // ));
  }
}