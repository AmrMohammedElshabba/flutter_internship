import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:hexcolor/hexcolor.dart';

class Themes {
  static final lightTheme = ThemeData(
      primarySwatch: Colors.grey,
      backgroundColor: HexColor("#E5E5E5"),
      textTheme: ThemeData
          .light()
          .textTheme
          .copyWith(
        bodyText2: TextStyle(fontSize: 24.sp, color: HexColor("##4EA831"),fontWeight: FontWeight.w500,fontFamily: "Lato"),
        bodyText1: TextStyle(fontSize: 21.sp, color: HexColor("#4EA831"),fontWeight: FontWeight.w400,fontFamily: "Lato"),
        subtitle1: TextStyle(fontSize: 16.sp, color: HexColor("#4EA831"),fontWeight: FontWeight.w400,fontFamily: "Lato"),

      ),);
}