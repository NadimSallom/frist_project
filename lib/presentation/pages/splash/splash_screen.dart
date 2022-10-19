import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/constants/color_manager.dart';
import 'package:flutter_project/presentation/constants/routes_manager.dart';

import '../../constants/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  startDelay() {
    timer = Timer(const Duration(seconds: 3), goNext);
  }

  goNext() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  void initState() {
    super.initState();
    startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkPurple,
      body:
          const Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
       /////
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
