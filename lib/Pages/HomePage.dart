import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsiacademy/Screens/CustomTabBar.dart';
import 'package:nsiacademy/Screens/CustomTabBarView.dart';
import 'package:nsiacademy/Screens/FirstContentOfBody.dart';
import 'package:nsiacademy/Screens/FontPageImage.dart';
import 'package:nsiacademy/Screens/NavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const route = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            SizedBox(
              height: 15,
            ),
            FontPageImage(),
            FirstContentOfBody(),
            CustomTabBar(),
            CusTomTabBarView(),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
