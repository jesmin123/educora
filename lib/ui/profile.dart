import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        actions: [
          Icon(Icons.settings,color: APP_BLACK_COLOR,),
          SizedBox(width: 35,)
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 115,
                  width: 115,
                  decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(20),border: Border.all(color: APP_BLUE_COLOR,width: 3,)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(color: APP_GREY_COLOR,borderRadius: BorderRadius.circular(15),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Text("Tom Cruise",style: AppFontStyle.profileNameStyle(APP_BLACK_COLOR),),
              SizedBox(height: LINE_HEIGHT*0.25,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(border: Border.all(color: APP_BLACK_COLOR,width: 0.1),shape: BoxShape.circle),
                  ),
                  SizedBox(width: 10,),
                  Text("Student",style: AppFontStyle.labeTextStyle(APP_BLACK_COLOR),),
                ],
              ),
              SizedBox(height: LINE_HEIGHT,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_TEAL_COLOR),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            SizedBox(height: 60,),
                            Text("85%",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                            Text("Goal",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)

                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red[100]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            SizedBox(height: 60,),
                            Align(alignment: Alignment.bottomLeft,child: Text("32",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,)),
                            Text("Total Classes",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)

                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.pink[100]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            SizedBox(height: 60,),
                             Align(alignment: Alignment.bottomLeft,child:Text("+10",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),),
                            Text("Total Books",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),)

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: LINE_HEIGHT,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text("Course  ",style: AppFontStyle.buttonStyle(APP_BLACK_COLOR),),
                        Text("Details",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(color: APP_TEAL_COLOR,borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                        child: Row(
                          children: [
                            Icon(Icons.access_time_outlined,color: APP_BLUE_COLOR,size: 20,),
                             Text("  3 hours, 20 min",style: AppFontStyle.labelTextStyle2(APP_BLUE_COLOR),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: LINE_HEIGHT,),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: 40,
                     height: 40,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: APP_BLUE_COLOR),
                    child: Icon(Icons.play_arrow,color: APP_TEAL_COLOR,),
                  ),
                ),
                title: Text("Introduction",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                subtitle: Text("Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),),
              ),
              SizedBox(height: LINE_HEIGHT,),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: APP_TEAL_COLOR),
                    child: Icon(Icons.play_arrow,color: APP_BLUE_COLOR,),
                  ),
                ),
                title: Text("The Language of Color",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                subtitle: Text("Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),),
              ),
              SizedBox(height: LINE_HEIGHT,),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: APP_TEAL_COLOR),
                    child: Icon(Icons.play_arrow,color: APP_BLUE_COLOR,),
                  ),
                ),
                title: Text("The Psychology of Color",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                subtitle: Text("Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.",style: AppFontStyle.labelTextStyle4(APP_BLACK_COLOR),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
