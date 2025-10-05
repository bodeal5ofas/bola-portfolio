import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/contact_icon.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/send_message_widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(color: AppColors.lightBackgroundColor,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppColors.primaryColor,
      width: 1.5,)
      
      ,),
          child: Row(
            children: [
              Expanded(
                child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hi, I’m Bola Raafat 👋\nA passionate Flutter Developer who loves creating mobile apps with clean design and great user experience.\nI’m always open to new opportunities, collaborations, or just a good tech chat.',
                    style: AppStyles.bold20.copyWith(color: Colors.white,fontSize: 16),),
                    SizedBox(height: 16,),
                    Align( alignment: Alignment.centerLeft ,child: Text("Let's Work Together",style: AppStyles.bold20.copyWith(color: Colors.white,fontSize: 16),)),
                    SizedBox(height: 16,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //  crossAxisAlignment: CrossAxisAlignment.,
                      spacing: 8,
                      children: [
                      ContactIcon(icon: Icons.phone, link: 'tel:01277296970'),
                      ContactIcon(icon: Icons.wechat, link: 'https://wa.me/201277296970'),
                      ContactIcon(icon: Icons.email, link: 'mailto:bolaraafat2003@gmail.com?subject=Hello&body=I%20want%20to%20connect%20with%20you'),
                     // ContactIcon(icon: Icons.location_on, link: ''),
                      ContactIcon(icon: Icons.facebook, link: 'https://www.facebook.com/bola.rafaat.31/'),
                          
                    ],),
                  ],
                ),
              ),
              Expanded(child: SendMessageWidget()),
            ],
          ),
        );
  }
}

