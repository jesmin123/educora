import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:educora/widgets/calendar.dart';
import 'package:flutter/material.dart';

class ClassBooking extends StatefulWidget {
  @override
  _ClassBookingState createState() => _ClassBookingState();
}

class _ClassBookingState extends State<ClassBooking> {
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
        title: Text(CLASS_BOOKING,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
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
              MyCalendar(),
              SizedBox(height: LINE_HEIGHT,),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Available Classes",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                  )),
              SizedBox(height: LINE_HEIGHT,),
              SizedBox(height: LINE_HEIGHT,),
              SizedBox(height: LINE_HEIGHT,),
              SizedBox(height: LINE_HEIGHT,),
              SizedBox(height: LINE_HEIGHT,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Figma class",style: AppFontStyle.buttonStyle(APP_BLACK_COLOR),),
                    Row(
                      children: [
                        Icon(Icons.calendar_today_outlined,color: Colors.black38,),
                        Text("18 March 2021", style: AppFontStyle.regularTextStyle(Colors.black38),)
                      ],
                    )
                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}
