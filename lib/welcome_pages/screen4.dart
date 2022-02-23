import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/strings.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.55,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 6),
                 decoration: BoxDecoration(
                   color: APP_WHITE_COLOR,
                     borderRadius: BorderRadius.only(bottomRight:Radius.circular(40),bottomLeft: Radius.circular(40),),
                   boxShadow: [BoxShadow(
                       offset: Offset(0.0, 1.0),
                     color: Colors.grey[400],
                     blurRadius: 6.0
                   )]
                 ),
                 child: Image.asset("asset/circles.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text("Welcome to\nEducora.",style: AppFontStyle.screenTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text("Login as a",style: AppFontStyle.loginTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){Navigator.pushNamed(context, LOGIN1);},
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(color: APP_BLUE_COLOR,borderRadius: BorderRadius.circular(10),),
                    child: Center(
                        child: Text("Student",style: AppFontStyle.buttonStyle(APP_WHITE_COLOR),))),
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(10),border: Border.all(color: APP_BLUE_COLOR,width: 2.0)),
                    child: Center(
                        child: Text("Teacher",style: AppFontStyle.buttonStyle(APP_BLUE_COLOR),))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
