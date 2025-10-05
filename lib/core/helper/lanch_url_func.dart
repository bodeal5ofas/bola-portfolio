import 'package:url_launcher/url_launcher.dart';

launchUrlFunc(String title)async{
                final Uri url=Uri.parse(title);
                if(await canLaunchUrl(url)){
                  await launchUrl(url,mode: LaunchMode.externalApplication);
                }else{
                  throw 'Could not launch $url';
                }
              }