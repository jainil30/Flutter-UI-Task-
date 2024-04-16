
import 'package:flutter/material.dart';

double getHeight({required double height,required BuildContext context}){
  return MediaQuery.of(context).size.height*height;
}

double getWidth({required double width,required BuildContext context}){
  return MediaQuery.of(context).size.height*width;
}