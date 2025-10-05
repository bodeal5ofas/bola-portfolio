import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/widgets/section_icon.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      
        children: [
          const SizedBox(height: 14,),
          CircleAvatar(
            backgroundColor: AppColors.lightGreyColor,
            radius: 32,
            child: Icon(Icons.person_2_outlined,color: AppColors.primaryColor,size: 50,
            )
            ,),
            const SizedBox(height: 16,),
            Text('Bola Rafaat',style: AppStyles.bold20.copyWith(color: AppColors.primaryColor),),
            const SizedBox(height: 8,),
            Text('Flutter Developer',style: AppStyles.semiBold16.copyWith(color: Colors.white),),
            const SizedBox(height: 16,),
            SectionIcon(icon: Icons.home_outlined, title: 'Home',onTap: () {
              //pop
              Navigator.pop(context);
              context.read<DeskProvider>().setCurrentIndex(0);
            },),
            const SizedBox(height: 10,),
            SectionIcon(icon: Icons.person, title: 'About',onTap: () {
              Navigator.pop(context);
              context.read<DeskProvider>().setCurrentIndex(1);
            },),
            const SizedBox(height: 10,),
            SectionIcon(icon: Icons.account_tree, title: 'Skills',onTap: () {
              Navigator.pop(context);
              context.read<DeskProvider>().setCurrentIndex(2);
            },),
            const SizedBox(height: 10,),
            SectionIcon(icon: Icons.work, title: 'Services',onTap: () {
              Navigator.pop(context);
              context.read<DeskProvider>().setCurrentIndex(3);
            },),
            const SizedBox(height: 10,),
            SectionIcon(icon: Icons.folder_open, title: 'Projects',onTap: () {
              Navigator.pop(context);
              context.read<DeskProvider>().setCurrentIndex(4);
            },),
            const SizedBox(height: 10,),
            SectionIcon(icon: Icons.phone, title: 'Contact',onTap: () {
              Navigator.pop(context);
              context.read<DeskProvider>().setCurrentIndex(5);
            },),
        ],
      ),
    );
  }
}