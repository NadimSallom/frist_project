// import 'package:flutter/material.dart';
// import 'package:flutter_project/presentation/bloc/login_bloc/login_bloc.dart';
//
// import '../presentation/constants/language/app_preferences.dart';
// import '../presentation/constants/routes_manager.dart';
// import '../presentation/constants/theme_manager.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class MyApp extends StatefulWidget {
//   //named constructor
//   const MyApp._internal(); //default constructor
//   static const MyApp _instance = MyApp._internal(); //single instance
//   factory MyApp() => _instance; //factory
//   @override
//   State<MyApp> createState() => _MyAppState();
//
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//         providers: [
//           BlocProvider(create: (_)=> di.sl<LoginBloc>())
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         onGenerateRoute: RouteGenerator.getRoute,
//         initialRoute: Routes.splashRoute,
//         theme: getApplicationTheme(),
//
//       ));
//
//   }
// }
//
//
