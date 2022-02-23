import 'package:educora/constants/colors.dart';
import 'package:educora/constants/strings.dart';
import 'package:flutter/material.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, SCREEN2);
          },
          child: Container(
            child: Image.asset("asset/logo.png"),
          ),
        ),
      ),
    );
  }
}
