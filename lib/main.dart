import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/desktop_screen.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/view_model/cubit/desk_provider.dart';
import 'package:portfolio/feature/home/ui/mobile_layout/mobile_screen.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    
  //  double layoutHeight=MediaQuery.sizeOf(context).height;
  //  double layoutWidth=MediaQuery.sizeOf(context).width;
      AppStyles.initContext(context);
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: ChangeNotifierProvider(
      create: (context) => DeskProvider(),builder: (context, child) => 
           LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return const MobileScreen();
              } else {
                return  const DesktopScreen();
              }
            },
          ),
        ),
      ),
    );
  }
}