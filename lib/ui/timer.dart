import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
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
          title: Text(TIMER,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
          centerTitle: true,
          actions: [
            Icon(Icons.notifications_none_outlined,color: APP_BLACK_COLOR,),
            SizedBox(width: 35,)
          ],
        ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: LINE_HEIGHT,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Time",style: AppFontStyle.profileNameStyle(APP_BLACK_COLOR),),
                  IconButton(icon: Icon(Icons.more_horiz), onPressed: (){})
                ],
              ),
            ),
            SizedBox(height: LINE_HEIGHT,),
            Container(
              width: MediaQuery.of(context).size.width*0.85,
              decoration: BoxDecoration(color: APP_BLUE_COLOR,borderRadius: BorderRadius.circular(20),),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("01:15:02",style: AppFontStyle.screenTextStyle(APP_WHITE_COLOR),),
                        Icon(Icons.keyboard_arrow_right,color: APP_WHITE_COLOR,)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: APP_WHITE_COLOR,),
                        Text("Running Class",style: AppFontStyle.regularTextStyle(APP_WHITE_COLOR),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: LINE_HEIGHT,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                  Text("See All",style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                ],
              ),
            ),
            SizedBox(height: LINE_HEIGHT,),
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
                subtitle: Row(
                 children: [
                   Container(
                     decoration: BoxDecoration(color:Colors.red[100],borderRadius: BorderRadius.circular(5)),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                       child: Text("Apps",style: AppFontStyle.labelStyle(Colors.red[500]),),
                     ),
                   ),
                   SizedBox(width: 6,),
                   Container(
                     decoration: BoxDecoration(color:Colors.purple[100],borderRadius: BorderRadius.circular(5)),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                       child: Text("UI design",style: AppFontStyle.labelStyle(Colors.purple[500]),),
                     ),
                   ),

                 ],
                ),
                trailing: Container(
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("00:42:21",style: AppFontStyle.labelTextStyle4(Colors.black45),),
                      Icon(Icons.play_arrow,size: 30,)

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: LINE_HEIGHT,),
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
                subtitle: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color:Colors.red[100],borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                        child: Text("Apps",style: AppFontStyle.labelStyle(Colors.red[500]),),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      decoration: BoxDecoration(color:Colors.purple[100],borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                        child: Text("UI design",style: AppFontStyle.labelStyle(Colors.purple[500]),),
                      ),
                    ),

                  ],
                ),
                trailing: Container(
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("00:42:21",style: AppFontStyle.labelTextStyle4(Colors.black45),),
                      Icon(Icons.play_arrow,size: 30,)

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: LINE_HEIGHT,),
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
                subtitle: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color:Colors.red[100],borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                        child: Text("Apps",style: AppFontStyle.labelStyle(Colors.red[500]),),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      decoration: BoxDecoration(color:Colors.purple[100],borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                        child: Text("UI design",style: AppFontStyle.labelStyle(Colors.purple[500]),),
                      ),
                    ),

                  ],
                ),
                trailing: Container(
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("00:42:21",style: AppFontStyle.labelTextStyle4(Colors.black45),),
                      Icon(Icons.play_arrow,size: 30,)

                    ],
                  ),
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
                  child: Text("Stop",style: AppFontStyle.buttonStyle(APP_WHITE_COLOR),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
