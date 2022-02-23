import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(icon: Icon(Icons.arrow_back,color: APP_BLACK_COLOR,),onPressed: (){Navigator.pop(context);},),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: LINE_HEIGHT,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Popular\nteachers!",style: TextStyle(color: APP_BLACK_COLOR,fontSize: 34,fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"
                    ),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.sort,size: 30,),onPressed: (){},)
                ],
              ),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                margin: EdgeInsets.only(bottom: 6),
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                    color: APP_BLUE_COLOR,
                    borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(
                    color: Colors.blue[100],
                    offset: Offset.fromDirection(1.0,3.0),
                    blurRadius:6,
                    spreadRadius: 6

                  )]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                        ),
                      Text("Adobe  XD",style: AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                      Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("05",style: AppFontStyle.loginTextStyle(APP_BLACK_COLOR),),
                            Text("years",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)
                          ],
                        ),
                        ),
                    ],
                  ),
                ),
                ),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                    color: APP_WHITE_COLOR,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: APP_BLUE_COLOR,width: 0.1)
                    // boxShadow: [BoxShadow(
                    //     color: Colors.blue[100],
                    //     offset: Offset.fromDirection(1.0,15.0),
                    //     blurRadius: 10,
                    //     spreadRadius: 6
                    //
                    // )]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                      ),
                      Text("Skectch",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("4.5",style: AppFontStyle.loginTextStyle(APP_BLACK_COLOR),),
                            Text("years",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                    color: APP_WHITE_COLOR,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: APP_BLUE_COLOR,width: 0.1)
                  // boxShadow: [BoxShadow(
                  //     color: Colors.blue[100],
                  //     offset: Offset.fromDirection(1.0,15.0),
                  //     blurRadius: 10,
                  //     spreadRadius: 6
                  //
                  // )]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                      ),
                      Text("Skectch",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("4.5",style: AppFontStyle.loginTextStyle(APP_BLACK_COLOR),),
                            Text("years",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                    color: APP_WHITE_COLOR,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: APP_BLUE_COLOR,width: 0.1)
                  // boxShadow: [BoxShadow(
                  //     color: Colors.blue[100],
                  //     offset: Offset.fromDirection(1.0,15.0),
                  //     blurRadius: 10,
                  //     spreadRadius: 6
                  //
                  // )]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                      ),
                      Text("Skectch",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("4.5",style: AppFontStyle.loginTextStyle(APP_BLACK_COLOR),),
                            Text("years",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                    color: APP_WHITE_COLOR,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: APP_BLUE_COLOR,width: 0.1)
                  // boxShadow: [BoxShadow(
                  //     color: Colors.blue[100],
                  //     offset: Offset.fromDirection(1.0,15.0),
                  //     blurRadius: 10,
                  //     spreadRadius: 6
                  //
                  // )]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                      ),
                      Text("Skectch",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("4.5",style: AppFontStyle.loginTextStyle(APP_BLACK_COLOR),),
                            Text("years",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
