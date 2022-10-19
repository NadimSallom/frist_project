import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_project/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:flutter_project/presentation/constants/color_manager.dart';
import 'package:flutter_project/presentation/constants/language/app_preferences.dart';
import 'package:flutter_project/presentation/constants/language/language_manager.dart';
import 'package:flutter_project/presentation/constants/routes_manager.dart';
import 'package:flutter_project/presentation/constants/theme_manager.dart';
import 'injection.dart' as di ;
import 'package:easy_localization/easy_localization.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();
  SystemChrome.setSystemUIOverlayStyle(
       SystemUiOverlayStyle(
        statusBarColor: ColorManager.darkPurple,
        statusBarBrightness: Brightness.light,
      ));
  runApp(
      EasyLocalization(
          supportedLocales: const [ARABIC_LOCAL,ENGLISH_LOCAL,TURKSH_LOCAL],
          path: ASSET_PATH_LOCALSATIONS,
          child:Phoenix(child:const MyApp())));
}


class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
              create: (_) => di.sl<LoginBloc>()),

        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.splashRoute,
          theme: getApplicationTheme(),

        ));
  }

}