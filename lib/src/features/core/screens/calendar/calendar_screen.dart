import 'package:dental_schedule/src/common_widgets/scaffold/app_bar_widget.dart';
import 'package:dental_schedule/src/common_widgets/scaffold/drawer_widget.dart';
import 'package:dental_schedule/src/constants/images_strings.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({Key? key}) : super(key: key);

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: const AAppBarWidget(title: "Calendar Screen",),
      drawer: const ANavigationDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(isDarkMode ? aAppDarkBg : aAppLightBg),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Calendar Screen"),
              Container(
                child: TableCalendar(
                  locale: "en_US",
                  rowHeight: 40,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  availableGestures: AvailableGestures.all,
                  focusedDay: today,
                  firstDay: DateTime.utc(2018, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
