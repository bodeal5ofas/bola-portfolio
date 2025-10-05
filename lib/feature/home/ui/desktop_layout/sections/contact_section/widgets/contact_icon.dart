import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key, required this.icon,required this.link});
final String link;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return 
    //  GestureDetector(
    //   onTap: ()async{
    //             final Uri url=Uri.parse(link);
    //             if(await canLaunchUrl(url)){
    //               await launchUrl(url,mode: LaunchMode.externalApplication);
    //             }else{
    //               throw 'Could not launch $url';
    //             }
    //           },
    //   child: SvgPicture.asset(image,fit: BoxFit.fill,),
    // );
    CircleAvatar(
      backgroundColor: AppColors.primaryColor,
      radius: 17,
      child: CircleAvatar(
        backgroundColor: AppColors.lightGreyColor,
        radius: 15,
        child: Center(
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: ()async{
                      final Uri url=Uri.parse(link);
                      if(await canLaunchUrl(url)){
                        await launchUrl(url,mode: LaunchMode.externalApplication);
                      }else{
                        throw 'Could not launch $url';
                      }
                    },
             icon: Icon(icon,color: AppColors.primaryColor,)
             ,),
        ),
      ),
    );
  }
}