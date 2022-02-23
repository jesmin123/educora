import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:flutter/material.dart';

class TeachersBooking extends StatefulWidget {
  @override
  _TeachersBookingState createState() => _TeachersBookingState();
}

class _TeachersBookingState extends State<TeachersBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(icon: Icon(Icons.arrow_back,color: APP_BLACK_COLOR,),onPressed: (){Navigator.pop(context);},),
        ),
        title: Text(TEACHERS_BOOKING,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_none_outlined,color: APP_BLACK_COLOR,),
          SizedBox(width: 35,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: LINE_HEIGHT,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Book appointment", style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                    Icon(Icons.filter_alt_outlined,color: APP_BLACK_COLOR,size: 20,),
                  ],
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                height: 80,
                selectionColor: APP_BLUE_COLOR,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected

                },
              ),
              SizedBox(height: LINE_HEIGHT,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text("3 Teachers available on ",style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                    Text("12 june 2021",style: AppFontStyle.buttonTextStyle(APP_BLUE_COLOR),),
                  ],
                ),
              ),
              SizedBox(height: LINE_HEIGHT*0.5,),
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
              InkWell(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_BLUE_COLOR),
                  child: Center(
                    child: Text("Book Now",style: AppFontStyle.buttonStyle(APP_WHITE_COLOR),),
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,)
            ],
          ),
        ),
      ),
    );
  }
}
