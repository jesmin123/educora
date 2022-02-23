import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:educora/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
         leading: Padding(
           padding: const EdgeInsets.only(top: 20,left: 20),
           child: GestureDetector(
             onTap: (){
               Navigator.pushNamed(context, PROFILE);
             },
             child: Container(
               height: 40,
                width: 40,
                margin: EdgeInsets.only(bottom: 5),
               decoration: BoxDecoration(
                 color: APP_WHITE_COLOR,
                 shape: BoxShape.circle,
                 boxShadow: [BoxShadow(
                   color: Colors.grey[200],
                   blurRadius: 5,
                   spreadRadius: 5,
                   offset: Offset(0.0, 1.0),
                 )]
               ),
               child: Icon(Icons.widgets_outlined,color: APP_BLACK_COLOR,),
             ),
           ),
         ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: LINE_HEIGHT,),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Welcome back\nSaymon!",style: TextStyle(color: APP_BLACK_COLOR,fontSize: 34,fontWeight: FontWeight.w600,
                fontFamily: "Poppins"
                ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Search(),
              SizedBox(height: LINE_HEIGHT,),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                margin: EdgeInsets.only(bottom: 10),
                decoration:
                BoxDecoration(color: APP_BLACK_COLOR,borderRadius: BorderRadius.circular(30),
                    boxShadow: [BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10,
                  offset: Offset.fromDirection(1.0,15.0),
                )]),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only( left: 20,top: 20),
                        child: Text("Start learning",style: AppFontStyle.regularTextStyle(APP_WHITE_COLOR),),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only( left: 20,top: 10),
                        child: Text("new Student!",style: AppFontStyle.buttonStyle(APP_WHITE_COLOR),),
                      ),
                    ),
                    SizedBox(height: LINE_HEIGHT,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only( left: 20,top: 10,bottom: 20),
                        child: InkWell(
                          onTap: (){Navigator.pushNamed(context, POPULAR);},
                          child: Container(
                            width: 100,
                            height: 35,
                            decoration:  BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(15),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Categories",style: AppFontStyle.labelTextStyle2(APP_BLUE_COLOR),),
                                Icon(Icons.arrow_forward_outlined,color: APP_BLUE_COLOR,size: 15,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Class in progress",style: AppFontStyle.bodysTextStyle(APP_BLACK_COLOR),)),
              ),
              SizedBox(height: LINE_HEIGHT*0.5,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(color: APP_TEAL_COLOR,borderRadius: BorderRadius.circular(15),),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 42,
                      width: 40,
                      decoration:  BoxDecoration(color: APP_BLACK_COLOR,borderRadius: BorderRadius.circular(10),),
                    ),
                  ),
                  title: Text("XD Prototyping",style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                  subtitle: Text("10 hours, 19 lessons",style: AppFontStyle.labelStyle(APP_RED_COLOR),),
                  trailing: Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("25%",style: AppFontStyle.labelTextStyle2(APP_BLUE_COLOR),),
                        CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 2.0,
                          percent: 0.8,
                          center: new Icon(
                            Icons.play_arrow,
                            size: 15.0,
                            color: Colors.blue,
                          ),
                          backgroundColor: APP_GREY_COLOR,
                          progressColor: APP_BLUE_COLOR,

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT*0.5,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(color: APP_TEAL_COLOR,borderRadius: BorderRadius.circular(15),),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 42,
                      width: 40,
                      decoration:  BoxDecoration(color: APP_BLACK_COLOR,borderRadius: BorderRadius.circular(10),),
                    ),
                  ),
                  title: Text("XD Prototyping",style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                  subtitle: Text("10 hours, 19 lessons",style: AppFontStyle.labelStyle(APP_RED_COLOR),),
                  trailing: Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("25%",style: AppFontStyle.labelTextStyle2(APP_BLUE_COLOR),),
                        CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 2.0,
                          percent: 0.8,
                          center: new Icon(
                            Icons.play_arrow,
                            size: 15.0,
                            color: Colors.blue,
                          ),
                          backgroundColor: APP_GREY_COLOR,
                          progressColor: APP_BLUE_COLOR,

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT*0.5,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(color: APP_TEAL_COLOR,borderRadius: BorderRadius.circular(15),),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 42,
                      width: 40,
                      decoration:  BoxDecoration(color: APP_BLACK_COLOR,borderRadius: BorderRadius.circular(10),),
                    ),
                  ),
                  title: Text("XD Prototyping",style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                  subtitle: Text("10 hours, 19 lessons",style: AppFontStyle.labelStyle(APP_RED_COLOR),),
                  trailing: Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("25%",style: AppFontStyle.labelTextStyle2(APP_BLUE_COLOR),),
                        CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 2.0,
                          percent: 0.8,
                          center: new Icon(
                            Icons.play_arrow,
                            size: 15.0,
                            color: Colors.blue,
                          ),
                          backgroundColor: APP_GREY_COLOR,
                          progressColor: APP_BLUE_COLOR,

                        ),
                      ],
                    ),
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
