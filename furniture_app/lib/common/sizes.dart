import 'package:flutter/material.dart';

/*Created By: Tushar Jethva
  used_for: for responsiveness of app 
  params: pass either height and width depending on function
*/
double getHeight({required double height,required BuildContext context}){
  return MediaQuery.of(context).size.height*height;
}

double getWidth({required double width,required BuildContext context}){
  return MediaQuery.of(context).size.height*width;
}