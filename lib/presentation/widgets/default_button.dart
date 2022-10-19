import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/styles_manager.dart';
import '../constants/values_manager.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = AppHeightSize.h55,
  bool isText = false,
  double radius = 0.0,
  required Color color ,
  required String text,
  required Function() function,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
      ),
      child: MaterialButton(
        elevation: 1.0,
        onPressed: function,
        child: Padding(
          padding:  EdgeInsets.all(12.0),
          child: Text(
            isText ? text.toUpperCase() : text,
            textAlign: TextAlign.center,
            style: getSemiBoldStyle(color: ColorManager.white,fontSize: AppSize.s14) ,
          ),
        ),
      ),
    );

Widget defaultTextButton ({
  required Function() function,
  required String text,
  required TextDecoration decoration,

   })=>
  Center(
    child: GestureDetector(
      onTap: function,
      child: Text(

          text,
        style: getMediumStyle(color: ColorManager.darkPurple,fontSize: AppSize.s14, decoration: TextDecoration.underline,
       ),

      ),
    ),
  );
