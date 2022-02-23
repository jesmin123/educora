import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  bool _scan=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_BLUE_COLOR,
      body: Center(
        child: Container(
          child: RaisedButton(
            child:Text("Scan"),
            onPressed: (){
              setState(() {
                _scan=!_scan;
              });
              showModalBottomSheet(
                  context: context,
                  builder: (builder){
                    return new Container(
                        height: MediaQuery.of(context).size.height*0.5,
                        decoration: new BoxDecoration(
                            color: APP_WHITE_COLOR,
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0))),
                        child: Column(
                          children: [
                            SizedBox(height: LINE_HEIGHT,),
                            SizedBox(height: LINE_HEIGHT,),
                            SizedBox(height: LINE_HEIGHT,),
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(shape: BoxShape.circle,color:_scan? APP_BLUE_COLOR:Colors.red),
                              child:Icon(_scan?Icons.check:Icons.close,size: 35,color: APP_WHITE_COLOR,)
                            ),
                            SizedBox(height: LINE_HEIGHT,),
                            _scan?Text("Scan Success",style: AppFontStyle.buttonStyle(APP_BLACK_COLOR),):Text("Scan Failed",style: AppFontStyle.buttonStyle(APP_BLACK_COLOR),),
                            SizedBox(height: LINE_HEIGHT,),
                            _scan?Text("Your credit card is successfully\nscanned!",style: AppFontStyle.labeTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.center,):
                            Text("Your credit card scan failed.\nPlease try again!!",style: AppFontStyle.labeTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.center,),

                            SizedBox(height: LINE_HEIGHT,),
                            SizedBox(height: LINE_HEIGHT,),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width*0.9,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_BLUE_COLOR),
                                child: Center(
                                  child: _scan?Text("Next",style: AppFontStyle.buttonStyle(APP_WHITE_COLOR),):Text("Try Again",style: AppFontStyle.buttonStyle(APP_WHITE_COLOR),),
                                ),
                              ),
                            ),
                          ],
                        ));
                  }
              );
            
            },
          ),
        ),
      ),
    );
  }
}
