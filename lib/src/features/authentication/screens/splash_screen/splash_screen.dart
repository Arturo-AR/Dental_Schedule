import 'package:dental_schedule/src/constants/colors.dart';
import 'package:dental_schedule/src/constants/images_strings.dart';
import 'package:dental_schedule/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({
    Key? key,
  }) : super(key: key);

  final controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    controller.startTransition();
    return Scaffold(
      backgroundColor: isDarkMode ? aDarkColor : aPrimaryColor,
      body: Center(
        child:
          Expanded(child: Image(image: AssetImage(isDarkMode ? aAppLogoBlue: aAppLogoWhite))),
      ),
    );
  }
}
