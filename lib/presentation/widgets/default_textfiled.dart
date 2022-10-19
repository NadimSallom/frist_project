import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/color_manager.dart';
import '../constants/values_manager.dart';


class TextFiled extends StatelessWidget {
  const TextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHeightSize.h70,
      width: AppWightSize.w70,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          hintText: "-",
          hintStyle: TextStyle(
            color: ColorManager.lightGrey,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s5),
              borderSide: BorderSide(
                width: AppWightSize.w1_5,
                color: ColorManager.borderTextFiledGrey,
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s5),
              borderSide: BorderSide(
                width: AppWightSize.w1_5,
                color: ColorManager.borderTextFiledGrey,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s5),
              borderSide: BorderSide(
                width: AppWightSize.w1_5,
                color: ColorManager.darkPurple,
              )),
        ),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
