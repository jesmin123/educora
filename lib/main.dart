import 'package:educora/constants/strings.dart';
import 'package:educora/login_pages/Login2.dart';
import 'package:educora/login_pages/login.dart';
import 'package:educora/ui/Home.dart';
import 'package:educora/ui/class_booking.dart';
import 'package:educora/ui/home_page.dart';
import 'package:educora/ui/my_activity.dart';
import 'package:educora/ui/popular_teachers.dart';
import 'package:educora/ui/profile.dart';
import 'package:educora/ui/scan_success.dart';
import 'package:educora/ui/teachers_booking.dart';
import 'package:educora/ui/timer.dart';
import 'package:educora/welcome_pages/Screen3.dart';
import 'package:educora/welcome_pages/initial_page.dart';
import 'package:educora/welcome_pages/screen4.dart';
import 'package:flutter/material.dart';

import 'welcome_pages/Screen2.dart';
import 'constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{

    INITIAL_PAGE : (context)=> Initial(),
    SCREEN2 : (context)=> Screen2(),
    SCREEN3 : (context)=> Screen3(),
    SCREEN4 : (context)=> Screen4(),
    LOGIN1 : (context)=> Login1(),
    LOGIN2 : (context)=> Login2(),
    HOME_PAGE : (context)=> HomePage(),
    HOME  : (context)=> Home(),
    PROFILE  : (context)=> Profile(),
    POPULAR  : (context)=> Popular(),
    CLASS_BOOKING  : (context)=> ClassBooking(),
    TEACHERS_BOOKING  : (context)=> TeachersBooking(),
    TIMER  : (context)=> Timer(),
    MY_ACTIVITY  : (context)=> MyActivity(),
    SCAN  : (context)=> Scan(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Educora",
      theme: ThemeData(
          backgroundColor: APP_WHITE_COLOR,
          primarySwatch: Colors.blue ,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),

      routes: routes,
      initialRoute:  INITIAL_PAGE,

    );
  }
}


