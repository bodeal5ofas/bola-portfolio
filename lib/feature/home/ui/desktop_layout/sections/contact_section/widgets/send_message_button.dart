import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMessageButton extends StatelessWidget {
  const SendMessageButton({super.key, required this.nameController, required this.emailController, required this.messageController, required this.formKey});
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  final GlobalKey<FormState> formKey;
final String email = "bolaraafat2003@gmail.com";
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        backgroundColor: AppColors.primaryColor,),
      onPressed: () async{
        if(formKey.currentState!.validate()){
           final Uri params = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Contact Me&body=Hello, I am ${nameController.text} and my email is ${emailController.text} and my message is ${messageController.text}. I want to talk with you!',
    );

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
      nameController.clear();
      emailController.clear();
      messageController.clear();
    } else {
      throw 'Could not launch $params';
    }
        }
      },
      child: Text("Send Message",style: AppStyles.semiBold16.copyWith(color: Colors.white),),
    );
  }
}