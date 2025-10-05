import 'package:flutter/material.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/home_section/widgets/custom_bar_text_button.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:provider/provider.dart';

class AppBarDesk extends StatelessWidget {
  const AppBarDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
     spacing: 15,
      children: [
          CustomBarTextButton(title: 'Home', onPressed: () {
            context.read<DeskProvider>().setCurrentIndex(0);
           },),
          CustomBarTextButton(title: 'About',onPressed: () {
            context.read<DeskProvider>().setCurrentIndex(1);
           },),
          CustomBarTextButton(title: 'Skills',onPressed: () {
            context.read<DeskProvider>().setCurrentIndex(2);
           },),
          CustomBarTextButton(title: 'Service',onPressed: () { 
           context.read<DeskProvider>().setCurrentIndex(3);
          },),
          CustomBarTextButton(title: 'Projects',onPressed: () {
            context.read<DeskProvider>().setCurrentIndex(4);
           },),
          CustomBarTextButton(title: 'Contact',onPressed: () {
           context.read<DeskProvider>().setCurrentIndex(5);
           },),

      ],
    );
  }
}