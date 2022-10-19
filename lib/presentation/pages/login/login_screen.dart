import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/domain/entities/login.dart';
import 'package:flutter_project/domain/usecases/add_phone_number_usecase.dart';
import 'package:flutter_project/presentation/constants/color_manager.dart';

import '../../bloc/login_bloc/login_bloc.dart';
import '../../constants/assets_manager.dart';
import '../../constants/strings_manager.dart';
import '../../constants/styles_manager.dart';
import '../../constants/values_manager.dart';
import '../number_code/number_code_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if(state is ErrorPhoneNumberState){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:Text(
              state.message,
              style: TextStyle(
                color: Colors.lightBlue,
              ),
            ),
          ),
          );
        }else if (state is AddPhoneNumberState){

          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:  (_)=> const NumberCode()), (route) => false);
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(
          child: Container(
              // height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(ImageAssets.backgroundImage),
                fit: BoxFit.cover,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: ColorManager.darkYellow,

                          height: AppWightSize.w6,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: ColorManager.darkYellow,
                          height: AppWightSize.w6,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: ColorManager.green,
                          height: AppWightSize.w6,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: ColorManager.red,
                          height: AppWightSize.w6,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorManager.darkPurple),
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: Text(
                          AppStrings.supportCenterBtn,
                          style: getRegularStyle(
                              color: ColorManager.darkPurple,
                              fontSize: AppSize.s12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(),
                  const SizedBox(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: AppPadding.p12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.helloThere,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            Text(
                              AppStrings.whatAreYou,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 12,
                          end: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                //  border: Border.all(color:Colors.black12),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: ColorManager.white,
                                  hintText: 'Phone number',
                                  hintStyle:
                                      Theme.of(context).textTheme.bodySmall,
                                  // prefixIcon: CountryCodePicker(
                                  //   initialSelection: 'TR',
                                  // ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        width: 0.0,
                                        color: ColorManager.darkPurple,
                                      )),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Colors.white,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Colors.white,
                                      )),
                                ),
                                // maxLength: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: MaterialButton(
                                elevation: 1.0,
                                color: ColorManager.lightYellow,
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ),
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute
                                    (builder: (_) => BlocProvider.value(
                                    value: BlocProvider.of<LoginBloc>(context),
                                    child:NumberCode(),
                                  )));
                                },

                                child: Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Text(
                                    "Send a Code",
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Enter as a Guest");
                                },
                                child: Text(
                                  "Enter as a Guest",
                                  style: TextStyle(
                                    //fontFamily: Fonts.medium,
                                    color: ColorManager.darkPurple,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),
                ],
              )),
        ));
      },
    );
  }
}
