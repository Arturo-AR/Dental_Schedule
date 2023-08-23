import 'package:dental_schedule/src/common_widgets/form/form_divider_widget.dart';
import 'package:dental_schedule/src/common_widgets/form/form_header_widget.dart';
import 'package:dental_schedule/src/common_widgets/form/social_footer.dart';
import 'package:dental_schedule/src/constants/images_strings.dart';
import 'package:dental_schedule/src/constants/text_strings.dart';
import 'package:dental_schedule/src/features/authentication/screens/login/login_Screen.dart';
import 'package:dental_schedule/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FormHeaderWidget(
                    image: aAppLogoBlue, title: aSignUpTitle, imageHeight: 0.1),
                const SignUpFormWidget(),
                const TFormDividerWidget(),
                SocialFooter(
                    text1: aAlreadyHaveAnAccount,
                    text2: aLogin,
                    onPressed: () => Get.off(() => const LoginScreen())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
