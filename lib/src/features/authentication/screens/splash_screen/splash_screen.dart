import 'package:dental_schedule/src/constants/colors.dart';
import 'package:dental_schedule/src/constants/images_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: aPrimaryColor,
      body: Center(
        child:
          Expanded(child: Image(image: AssetImage(aAppLogoWhite))),
      ),
    );
  }
}
