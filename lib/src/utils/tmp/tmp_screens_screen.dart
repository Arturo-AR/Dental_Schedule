import 'package:flutter/material.dart';

class TmpScreensScreen extends StatelessWidget {
  const TmpScreensScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Screens"),
            ],
          ),
        ),
      ),
    );
  }
}