import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_BLACK_COLOR,
      appBar: AppBar(
        backgroundColor: APP_BLACK_COLOR,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(icon: Icon(Icons.arrow_back,color: APP_WHITE_COLOR,),onPressed: (){Navigator.pop(context);},),
        ),
        title: Text("Courses",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),),
        centerTitle: true,
        actions: [
          Image.asset("asset/Shape.png"),
          SizedBox(width: 35,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: LINE_HEIGHT,),
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 20),
              child: Text("Online",style: AppFontStyle.nameStyle1(APP_WHITE_COLOR),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,),
              child: Text("Courses",style: AppFontStyle.nameStyle(APP_YELLOW_COLOR),),
            ),
            SizedBox(height: LINE_HEIGHT,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                color: APP_WHITE_COLOR
              ),
              child: Column(
                children: [
                  SizedBox(height: LINE_HEIGHT,),
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
                  SizedBox(height: LINE_HEIGHT*0.5,),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
