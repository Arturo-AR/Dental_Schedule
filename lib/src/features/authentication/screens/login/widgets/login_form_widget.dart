import 'package:dental_schedule/src/common_widgets/button/primary_button.dart';
import 'package:dental_schedule/src/constants/text_strings.dart';
import 'package:dental_schedule/src/features/core/screens/calendar/calendar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(LoginController());
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Form(
        //key: controller.loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// -- Email Field
            TextFormField(
              //validator: Helper.validateEmail,
              //controller: controller.email,
              decoration:
              const InputDecoration(prefixIcon: Icon(LineAwesomeIcons.user), labelText: aEmail, hintText: aEmail),
            ),
            const SizedBox(height: 30 - 20),

            /// -- Password Field
            //Obx(
            /*() => */ TextFormField(
                //controller: controller.password,
                validator: (value) {
                  if (value!.isEmpty) return 'Enter your password';
                  return null;
                },
                //obscureText: controller.showPassword.value ? false : true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.fingerprint),
                  labelText: aPassword,
                  hintText: aPassword,
                  suffixIcon: IconButton(
                    icon: const Icon(LineAwesomeIcons.eye)/*controller.showPassword.value
                        ? const Icon(LineAwesomeIcons.eye)
                        : const Icon(LineAwesomeIcons.eye_slash)*/,
                    onPressed: () {}/*=> controller.showPassword.value = !controller.showPassword.value*/,
                  ),
                ),
              ),
            //),
            const SizedBox(height: 30 - 10),

            /// -- FORGET PASSWORD BTN
            /*Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {}*//*=> ForgetPasswordScreen.buildShowModalBottomSheet(context)*//*,
                child: const Text(aForgetPassword),
              ),
            ),*/

            /// -- LOGIN BTN
            //Obx(
                  /*() => */APrimaryButton(
                //isLoading: controller.isLoading.value ? true : false,
                text: aLogin.tr,
                onPressed: () {
                  Get.off(const CalendarScreen());
                }/*controller.isFacebookLoading.value || controller.isGoogleLoading.value
                    ? () {}
                    : controller.isLoading.value
                    ? () {}
                    : () => controller.login()*/,
              ),
            //),
          ],
        ),
      ),
    );
  }
}
