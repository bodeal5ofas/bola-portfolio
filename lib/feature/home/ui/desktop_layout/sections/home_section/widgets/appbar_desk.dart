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
              animatescroll(context.read<DeskProvider>().homeKey.currentContext!);

            //context.read<DeskProvider>().setCurrentIndex(0);
           },),
          CustomBarTextButton(title: 'About',onPressed: () {
                          animatescroll(context.read<DeskProvider>().aboutKey.currentContext!);

           // context.read<DeskProvider>().setCurrentIndex(1);
           },),
          CustomBarTextButton(title: 'Skills',onPressed: () {
                          animatescroll(context.read<DeskProvider>().skillsKey.currentContext!);

            // context.read<DeskProvider>().setCurrentIndex(2);
           },),
          CustomBarTextButton(title: 'Service',onPressed: () { 
                          animatescroll(context.read<DeskProvider>().serviceKey.currentContext!);

          //  context.read<DeskProvider>().setCurrentIndex(3);
          },),
          CustomBarTextButton(title: 'Projects',onPressed: () {
                          animatescroll(context.read<DeskProvider>().projectsKey.currentContext!);

            // context.read<DeskProvider>().setCurrentIndex(4);
           },),
          CustomBarTextButton(title: 'Contact',onPressed: () {
                          animatescroll(context.read<DeskProvider>().contactKey.currentContext!);

          //  context.read<DeskProvider>().setCurrentIndex(5);
           },),

      ],
    );
  }
   void animatescroll(BuildContext context) {
       // Navigator.pop(context);
    Scrollable.ensureVisible(
      context,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}