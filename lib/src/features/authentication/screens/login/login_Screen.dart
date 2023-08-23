import 'package:dental_schedule/src/common_widgets/form/form_divider_widget.dart';
import 'package:dental_schedule/src/common_widgets/form/form_header_widget.dart';
import 'package:dental_schedule/src/common_widgets/form/social_footer.dart';
import 'package:dental_schedule/src/constants/colors.dart';
import 'package:dental_schedule/src/constants/images_strings.dart';
import 'package:dental_schedule/src/constants/text_strings.dart';
import 'package:dental_schedule/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? aDarkColor : aWhiteColor,
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(isDarkMode ? aAppDarkBg : aAppLightBg),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FormHeaderWidget(image: aAppLogoBlue, title: aAppName),
                  const LoginFormWidget(),
                  const TFormDividerWidget(),
                  SocialFooter(text1: aDontHaveAnAccount, text2: aSignup, onPressed: () {}/*=> Get.off(() => const SignupScreen())*/),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
