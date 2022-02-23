import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Image.asset("asset/screen3.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Text("The Best Platform For\nOnline Learning",style: AppFontStyle.regularHeadingTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.center,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: Text("Amet minim mollit non deserunt ullamco est sit\n aliqua amet sint. Velit officia consequat duis\n enim velit mollit.",textAlign: TextAlign.center,style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              InkWell(
                 onTap: (){Navigator.pushNamed(context, SCREEN4);},
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width*0.6,
                    margin: EdgeInsets.fromLTRB(0, 0,25,15),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: APP_BLUE_COLOR,
                        boxShadow: [BoxShadow(
                          color: Colors.blue[100],
                          blurRadius: 15,
                          spreadRadius: 8,
                          offset:Offset.fromDirection(1.0,20.0),)]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10.0),
                          child: Text("Get Start",style: AppFontStyle.bnTextStyle(APP_WHITE_COLOR),),
                        ),
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: APP_WHITE_COLOR,),
                          child: Center(child: Icon(Icons.keyboard_arrow_right,color: APP_BLUE_COLOR,)),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
