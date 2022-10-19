import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/assets_manager.dart';
import '../../constants/color_manager.dart';
import '../../constants/strings_manager.dart';
import '../../constants/styles_manager.dart';
import '../../constants/values_manager.dart';
import '../../widgets/default_button.dart';
import '../../widgets/default_textfiled.dart';

class NumberCode extends StatefulWidget {
  const NumberCode({Key? key}) : super(key: key);

  @override
  State<NumberCode> createState() => _NumberCodeState();
}

class _NumberCodeState extends State<NumberCode> {
  var n;
  @override
  Widget build(BuildContext context) {
       return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowGlow();
            return n;
          },
          child: SafeArea(
            child: Container(
                decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageAssets.backgroundImage),
                      fit: BoxFit.cover,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        appBarColor(ColorManager.darkPurple),
                        appBarColor(ColorManager.darkYellow),
                        appBarColor(ColorManager.green),
                        appBarColor(ColorManager.red),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: AppPadding.p12),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.darkPurple),
                            borderRadius: BorderRadius.circular(AppSize.s4)),
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          child: Text(
                            AppStrings.supportCenterBtn.tr(),
                            style: getRegularStyle(
                                color: ColorManager.darkPurple,
                                fontSize: AppSize.s12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(),
                    const SizedBox(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: AppPadding.p12,
                        end: AppPadding.p12,
                      ),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.weSentDigits.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                  Text(
                                    AppStrings.toYourPhone.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: AppHeightSize.h22,
                              ),
                              Form(
                                child: Row(
                                  //mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: const [
                                    TextFiled(),
                                    TextFiled(),
                                    TextFiled(),
                                    TextFiled(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // const SizedBox(height: AppHeightSize.h22,),
                          Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: defaultButton(
                                    text: AppStrings.confirm.tr(),
                                    function: () {},
                                    color: ColorManager.darkYellow,
                                    radius: AppSize.s5),
                              ),
                              const SizedBox(
                                height: AppHeightSize.h14,
                              ),
                              Center(
                                child: defaultTextButton(
                                  decoration: TextDecoration.underline,
                                  function: () {},
                                  text: AppStrings.didntReceiveCode.tr(),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(),
                    const SizedBox(),
                    const SizedBox(),
                    const SizedBox(),
                    const SizedBox(),
                    const SizedBox(),
                  ],
                )),
          ),
        ),
      ),
    );
  }
  Widget appBarColor(Color color) => Expanded(
    child: Container(
      color: color,
      height: AppWightSize.w6,
    ),
  );
}
