import 'package:flutter/cupertino.dart';

import 'font_manager.dart';

TextStyle getTextStyle(double fontSize,FontWeight fontWeight ,Color color, TextDecoration decoration){
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: fontWeight,
    decoration :decoration,
  );
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,required Color color}){
  return getTextStyle(fontSize, FontWeightManager.regular, color,TextDecoration.none);
}

// light style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,required Color color}){
  return getTextStyle(fontSize, FontWeightManager.light, color,TextDecoration.none);
}
// medium style
TextStyle getMediumStyle({
  double fontSize = FontSize.s12,required Color color, required TextDecoration decoration, }){
  return getTextStyle(fontSize, FontWeightManager.medium, color,decoration );
}
// semiBold style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,required Color color}){
  return getTextStyle(fontSize, FontWeightManager.semiBold, color,TextDecoration.none);
}
// bold style
TextStyle getBoldStyle({
  double fontSize = FontSize.s12,required Color color}){
  return getTextStyle(fontSize, FontWeightManager.bold, color,TextDecoration.none);
}
