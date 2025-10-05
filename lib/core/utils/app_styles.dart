import 'package:flutter/cupertino.dart';

class AppStyles {
static late BuildContext context;
  static initContext(BuildContext context2) {
    context=context2;
  }
static TextStyle semiBold16=TextStyle(fontWeight: FontWeight.w600,fontSize: getResponsevFontSize(16,),);

static TextStyle bold20=TextStyle(fontWeight: FontWeight.bold,fontSize: getResponsevFontSize(20,),);

static TextStyle regular12=TextStyle(fontWeight: FontWeight.w400,fontSize: getResponsevFontSize(14,),);

static double getResponsevFontSize( double fontSize) {
    double scaleFactor=getScaleFactor(context);
    double responsevFontSize=fontSize*scaleFactor;
    double minLimit=responsevFontSize * 0.8;
    double maxLimit=responsevFontSize * 1.2;
   return responsevFontSize.clamp(minLimit, maxLimit);
}

static double getScaleFactor(BuildContext context) {
  double width= MediaQuery.sizeOf(context).width;
  if(width<600){
    return width / 400;
  }else{
    return width / 1000;
  }
}

}


