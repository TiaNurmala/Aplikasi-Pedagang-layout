import 'package:flutter/material.dart';
import 'package:pedagang/in_app/profile/components/body.dart';
import 'package:pedagang/size_config.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFe3724b),
      elevation: 0,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Profil"),
    );
  }
}