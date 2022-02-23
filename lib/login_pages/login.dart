import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 60),
              child: Stack(
                 children: [
                   Center(child: Image.asset("asset/Ellipse.png")),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 50 ),
                     child: Center(child: Image.asset("asset/logo1.png")),
                   ),
                 ],
              ),

            ),
            SizedBox(height: LINE_HEIGHT,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                color: APP_BLUE_COLOR,
              ),
              child: Column(
                children: [
                  DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: TabBar(
                      indicatorColor: Colors.transparent,
                      labelPadding: EdgeInsets.symmetric(vertical: 20),
                        tabs: [
                          Text("LOGIN",style: AppFontStyle.bodyTextStyle(),),
                          Text("SIGN UP",style: AppFontStyle.bodyTextStyle(),),
                    ]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                      color: APP_WHITE_COLOR,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: LINE_HEIGHT*2,  ),
                        Align(
                          alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Text("Email",style: AppFontStyle.labeTextStyle(APP_BLACK_COLOR),),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: TextField(
                             decoration: InputDecoration(isDense: true,),
                          ),
                        ),
                        SizedBox(height: LINE_HEIGHT*2),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Text("Password",style: AppFontStyle.labeTextStyle(APP_BLACK_COLOR),),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(isDense: true,suffix: Text("Show",style: AppFontStyle.labeTextStyle(APP_BLUE_COLOR),)),
                          ),
                        ),
                        SizedBox(height: LINE_HEIGHT),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Text("Forgot password?",style: AppFontStyle.labeTextStyle(APP_BLUE_COLOR),),
                            )),
                        SizedBox(height: LINE_HEIGHT*2),
                        InkWell(
                          onTap: (){Navigator.pushNamed(context, LOGIN2);},
                          child: Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_BLUE_COLOR),
                            child: Center(
                              child: Text("Login",style: AppFontStyle.buttonStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                        ),
                        SizedBox(height: LINE_HEIGHT),
                        Text("Create account",style: AppFontStyle.titleAppBarStyle(APP_BLUE_COLOR),),
                        SizedBox(height: LINE_HEIGHT),SizedBox(height: LINE_HEIGHT),
                        SizedBox(height: LINE_HEIGHT),

                      ],
                    ),

                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
