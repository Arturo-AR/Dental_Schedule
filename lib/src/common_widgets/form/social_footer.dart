import 'package:dental_schedule/src/common_widgets/button/clickable_richtext_widget.dart';
import 'package:dental_schedule/src/common_widgets/button/social_button.dart';
import 'package:dental_schedule/src/constants/colors.dart';
import 'package:dental_schedule/src/constants/images_strings.dart';
import 'package:dental_schedule/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialFooter extends StatelessWidget {
  const SocialFooter({
    Key? key,
    this.text1 = aDontHaveAnAccount,
    this.text2 = aSignup,
    required this.onPressed,
  }) : super(key: key);

  final String text1, text2;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(LoginController());
    return Container(
      padding: const EdgeInsets.only(top: 20 * 1.5, bottom: 20),
      child: Column(
        children: [
          //Obx(
                /*() => */ASocialButton(
              image: aGoogleLogo,
              background: aGoogleBgColor,
              foreground: aGoogleForegroundColor,
              text: '${aConnectWith.tr} ${aGoogle.tr}',
              //isLoading: controller.isGoogleLoading.value ? true : false,
              onPressed: () {}/*controller.isFacebookLoading.value || controller.isLoading.value
                  ? () {}
                  : controller.isGoogleLoading.value
                  ? () {}
                  : () => controller.googleSignIn()*/,
            ),
          //),
          const SizedBox(height: 10),
          //Obx(
                /*() => */ASocialButton(
              image: aFacebookLogo,
              foreground: aWhiteColor,
              background: aFacebookBgColor,
              text: '${aConnectWith.tr} ${aFacebook.tr}',
              //isLoading: controller.isFacebookLoading.value ? true : false,
              onPressed: () {}/*controller.isGoogleLoading.value || controller.isLoading.value
                  ? () {}
                  : controller.isFacebookLoading.value
                  ? () {}
                  : () => controller.facebookSignIn()*/,
            ),
          //),
          const SizedBox(height: 20 * 2),
          ClickableRichTextWidget(
            text1: text1.tr,
            text2: text2.tr,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
