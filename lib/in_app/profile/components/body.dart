import 'package:flutter/material.dart';
import 'package:pedagang/in_app/profile/components/profile_menu.dart';
import 'package:pedagang/in_app/profile/edit_profile.dart';
import 'package:pedagang/in_app/profile/status.dart';
import 'package:pedagang/size_config.dart';

import 'info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/profile.jpg",
            name: "Joe",
            email: "joe@gmail.com",
          ),
          SizedBox(height: SizeConfig.defaultSize * 2), //20
          ProfileMenuItem(
            title: 'Edit Profile',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfile(),
                ),
              );
            },
          ),
          ProfileMenuItem(
            title: "Status",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TrackingPage(),
                ),
              );
            },
          ),
          ProfileMenuItem(
            title: "Logout",
            colors: Colors.red,
            press: () {},
          ),
        ],
      ),
    );
  }
}
