import 'package:dental_schedule/src/features/authentication/screens/login/login_Screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  Future startTransition() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.off(const LoginScreen());
  }
}
