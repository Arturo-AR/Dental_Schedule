import 'package:dental_schedule/src/common_widgets/button/primary_button.dart';
import 'package:dental_schedule/src/constants/text_strings.dart';
import 'package:dental_schedule/src/features/core/screens/calendar/calendar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(SignUpController());
    return Container(
      padding: const EdgeInsets.only(top: 30 - 15, bottom: 30),
      child: Form(
        //key: controller.signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              //controller: controller.fullName,
              validator: (value) {
                if (value!.isEmpty) return 'Name cannot be empty';
                return null;
              },
              decoration: const InputDecoration(
                  label: Text(aFullName),
                  prefixIcon: Icon(LineAwesomeIcons.user)),
            ),
            const SizedBox(height: 30 - 20),
            TextFormField(
              //controller: controller.email,
              //validator: Helper.validateEmail,
              decoration: const InputDecoration(
                  label: Text(aEmail),
                  prefixIcon: Icon(LineAwesomeIcons.envelope)),
            ),
            const SizedBox(height: 30 - 20),
            TextFormField(
              //controller: controller.phoneNo,
              validator: (value) {
                if (value!.isEmpty) return 'Phone number cannot be empty';
                return null;
              },
              decoration: const InputDecoration(
                  label: Text(aPhoneNo),
                  prefixIcon: Icon(LineAwesomeIcons.phone)),
            ),
            const SizedBox(height: 30 - 20),
            //Obx(
            /*() => */ TextFormField(
              //controller: controller.password,
              //validator: Helper.validatePassword,
              //obscureText: controller.showPassword.value ? false : true,
              decoration: InputDecoration(
                label: const Text(aPassword),
                prefixIcon: const Icon(Icons.fingerprint),
                suffixIcon: IconButton(
                  icon: const Icon(LineAwesomeIcons
                      .eye) /*controller.showPassword.value
                        ? const Icon(LineAwesomeIcons.eye)
                        : const Icon(LineAwesomeIcons.eye_slash)*/
                  ,
                  onPressed:
                      () {} /*=> controller.showPassword.value = !controller.showPassword.value*/,
                ),
              ),
            ),
            //),
            const SizedBox(height: 30 - 10),
            //Obx(
            /*() => */ APrimaryButton(
              //isLoading: controller.isLoading.value ? true : false,
              text: aSignup.tr,
              onPressed: () => Get.off(() => CalendarScreen())
              /*controller.isFacebookLoading.value || controller.isGoogleLoading.value
                    ? () {}
                    : controller.isLoading.value
                    ? () {}
                    : () => controller.createUser()*/
              ,
            ),
            //),
          ],
        ),
      ),
    );
  }
}
