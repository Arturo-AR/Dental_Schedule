import 'package:flutter/material.dart';

class PatientsListScreen extends StatelessWidget {
  const PatientsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Patients List Screen")
              ],
            ),
          ),
        ),
      ),
    );
  }
}