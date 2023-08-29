import 'package:dental_schedule/src/constants/colors.dart';
import 'package:dental_schedule/src/constants/images_strings.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ANavigationDrawer extends StatelessWidget {
  const ANavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Arturo Anguiano",style: TextStyle(color: Colors.black),),
            accountEmail: Text("arturo@gmail.com",style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset(aProfileImage),),
            ),
            decoration: BoxDecoration(
              color: aPrimaryColor,
              //image: DecorationImage(image: AssetImage(aHeaderBg), fit: BoxFit.cover)
            ),
          ),
          ListTile(
            leading: Icon(LineAwesomeIcons.calendar),
            title: Text("Calendar"),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(LineAwesomeIcons.alternate_sign_out),
            title: Text("LogOut"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
