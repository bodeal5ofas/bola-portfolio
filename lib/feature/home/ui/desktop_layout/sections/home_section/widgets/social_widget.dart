import 'package:flutter/material.dart';
//import 'package:portfolio/core/utils/app_colors.dart';
import 'package:svg_flutter/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key, required this.image,required this.link});
final String image,link;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()async{
                final Uri url=Uri.parse(link);
                if(await canLaunchUrl(url)){
                  await launchUrl(url,mode: LaunchMode.externalApplication);
                }else{
                  throw 'Could not launch $url';
                }
              },
      child: SvgPicture.asset(image,fit: BoxFit.fill,),
    );
  }
}