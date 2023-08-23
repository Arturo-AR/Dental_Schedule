import 'package:dental_schedule/src/features/core/screens/add_appointment/add_appointment_screen.dart';
import 'package:dental_schedule/src/features/core/screens/add_patient/add_patient_screen.dart';
import 'package:dental_schedule/src/features/core/screens/appointment_detail/appointment_detail_screen.dart';
import 'package:dental_schedule/src/features/core/screens/patient_details/patient_details_screen.dart';
import 'package:dental_schedule/src/features/core/screens/patients_list/patients_list_screen.dart';
import 'package:dental_schedule/src/features/core/screens/profile/profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Calendar Screen"),
              ElevatedButton(onPressed: () => Get.to(() => const CalendarScreen()), child: const Text("Calendar")),
              ElevatedButton(onPressed: () => Get.to(() => const PatientsListScreen()), child: const Text("Patients List")),
              ElevatedButton(onPressed: () => Get.to(() => const PatientDetailsScreen()), child: const Text("Patient Detail")),
              ElevatedButton(onPressed: () => Get.to(() => const AddAppointmentScreen()), child: const Text("Add Appointment")),
              ElevatedButton(onPressed: () => Get.to(() => const AddPatientScreen()), child: const Text("Add Patient")),
              ElevatedButton(onPressed: () => Get.to(() => const AppointmentDetailScreen()), child: const Text("Appointment detail")),
              ElevatedButton(onPressed: () => Get.to(() => const ProfileScreen()), child: const Text("Profile")),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
