import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
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
                        Center(child: Text("Verification Code",style: AppFontStyle.buttonStyle(APP_BLACK_COLOR),)),
                        SizedBox(height: LINE_HEIGHT),
                        Center(child: Text("Enter the 4 digits code that you received\non your e-mail.",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),textAlign: TextAlign.center,)),
                        SizedBox(height: LINE_HEIGHT*2),
                        PinEntryTextField(
                          showFieldAsBox: true,
                           fieldWidth: 50.0,


                          onSubmit: (String pin){

                            showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    title: Text("Pin"),
                                    content: Text('Pin entered is $pin'),
                                  );
                                }
                            );

                          },
                        ),
                        SizedBox(height: LINE_HEIGHT*2),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, HOME);
                          },
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
