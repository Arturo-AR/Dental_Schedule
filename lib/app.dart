import 'package:dental_schedule/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:dental_schedule/src/utils/app_bindings.dart';
import 'package:dental_schedule/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// -- README(Docs[3]) -- Bindings
      initialBinding: InitialBinding(),
      themeMode: ThemeMode.system,
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: SplashScreen())),
    );
  }
}
