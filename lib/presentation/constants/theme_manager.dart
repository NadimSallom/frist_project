import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/constants/styles_manager.dart';
import 'package:flutter_project/presentation/constants/values_manager.dart';


import 'color_manager.dart';
import 'font_manager.dart';


ThemeData getApplicationTheme() {
  return ThemeData(

      //main colors
      primaryColor: ColorManager.darkYellow,
      primaryColorDark: ColorManager.darkPurple,
      primaryColorLight: ColorManager.lightGrey,
      disabledColor: ColorManager.hintGrey,
      splashColor: ColorManager.hintGrey,
      // ripple effect color
      primarySwatch: Colors.orange,
      //cardView theme
      cardTheme: CardTheme(
        color: ColorManager.darkYellow,
        shadowColor: ColorManager.lightGrey,
        elevation: AppSize.s4,
      ),

      // App Bar Theme
      appBarTheme: AppBarTheme(
          color: ColorManager.darkPurple,
          elevation: AppSize.s4,
          shadowColor: ColorManager.white,
          titleTextStyle: getMediumStyle(
              color: ColorManager.white, fontSize: FontSize.s14, decoration: TextDecoration.none)),

      // button Theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.hintGrey,
        buttonColor: ColorManager.darkYellow,
        splashColor: ColorManager.lightYellow,
      ),

      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getSemiBoldStyle(
                color: ColorManager.white, fontSize: FontSize.s14),
            primary: ColorManager.lightYellow,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s8)))),

      // Text Theme
    textTheme: TextTheme(
      displayLarge: getRegularStyle(color: ColorManager.darkPurple,fontSize: AppSize.s20),
      displaySmall: getSemiBoldStyle(color: ColorManager.darkPurple,fontSize: AppSize.s24),
      bodySmall: getRegularStyle(color: ColorManager.hintGrey,fontSize: AppSize.s12),
      bodyLarge: getSemiBoldStyle(color:ColorManager.white,fontSize: AppSize.s14 ),
      titleMedium: getMediumStyle(color: ColorManager.darkPurple,fontSize: AppSize.s14, decoration: TextDecoration.none),
    ),

       // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      //content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(color: ColorManager.hintGrey,fontSize: FontSize.s12),
      labelStyle: getMediumStyle(color: ColorManager.hintGrey,fontSize: FontSize.s12, decoration: TextDecoration.none),
      errorStyle: getRegularStyle(color: ColorManager.darkPurple),

      // enabled border style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.white,width: AppSize.s1_5),
        borderRadius:  const BorderRadius.all(Radius.circular(AppSize.s5)),),

      //focused border style
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.white,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s5)),),

      disabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s5)),
          borderSide:  BorderSide(color: ColorManager.white,width: AppSize.s1_5),),

      // error border style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),),
      //focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.borderTextField,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),),


    ),

      );
}
