import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:educora/widgets/chart.dart';
import 'package:flutter/material.dart';

class MyActivity extends StatefulWidget {
  @override
  _MyActivityState createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {
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
        title: Text(MY_ACTIVITY,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_none_outlined,color: APP_BLACK_COLOR,),
          SizedBox(width: 35,)
        ],
      ),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              LineChartSample2(),
              SizedBox(height: LINE_HEIGHT,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TabBar(
                    indicator: BoxDecoration(borderRadius: BorderRadius.circular(50),color: APP_BLUE_COLOR,border: Border.all(color: APP_BLUE_COLOR,width: 1)),
                    unselectedLabelColor: APP_BLACK_COLOR,

                    tabs: [
                    Container(
                      height: 30,
                      child: Center(child: Text("Day")),),
                    Container(
                      height: 30,
                      child: Center(child: Text("Week")),)
                ]),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(color: APP_BLUE_COLOR,borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(

                            children: [
                              Container(
                                height:32,
                                width: 32,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: APP_GREEN_COLOR),
                                child: Icon(Icons.check,color: APP_WHITE_COLOR,size: 20,),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Text("Class Completed",style: AppFontStyle.regularTextStyle(APP_WHITE_COLOR),),
                              )
                            ],
                          ),
                          SizedBox(height: LINE_HEIGHT,),
                          Text("12",style: AppFontStyle.screenTextStyle(APP_WHITE_COLOR),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: APP_BLUE_COLOR,borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(

                            children: [
                              Container(
                                height:32,
                                width: 32,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: APP_GREY_COLOR),
                                child: Icon(Icons.timer,color: APP_WHITE_COLOR,size: 20,),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Text("Time Duration",style: AppFontStyle.regularTextStyle(APP_WHITE_COLOR),),
                              )
                            ],
                          ),
                          SizedBox(height: LINE_HEIGHT,),
                          Text("1h 46m",style: AppFontStyle.screenTextStyle(APP_WHITE_COLOR),)
                        ],
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
