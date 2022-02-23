import 'package:educora/constants/app_font_style.dart';
import 'package:educora/constants/colors.dart';
import 'package:educora/constants/dimen.dart';
import 'package:educora/constants/strings.dart';
import 'package:educora/ui/courses.dart';
import 'package:educora/ui/scan_success.dart';
import 'package:educora/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'home_page.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab=0;
  int currentDrawer=0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      drawer: Drawer(
        child: SafeArea(

            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: APP_BLUE_COLOR,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Center(child: Text("Yousuf Saymon",style: AppFontStyle.bodysTextStyle(Colors.white54),)),
                        subtitle: Center(child: Text("STUDENT",style: AppFontStyle.labelTextStyle2(Colors.white54),)),
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      SizedBox(height: LINE_HEIGHT,),
                      ListTile(
                        title: Text("Home",style: AppFontStyle.bodysTextStyle(currentDrawer==1?APP_WHITE_COLOR:Colors.white54),),
                        leading: Icon(Icons.home_outlined,color: currentDrawer==1?APP_WHITE_COLOR:Colors.white54,),
                        onTap: (){
                          Navigator.pushNamed(context, CLASS_BOOKING);
                          setState(() {

                            currentDrawer=1;
                          });
                        },
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      ListTile(
                        title: Text("Videos",style: AppFontStyle.bodysTextStyle(currentDrawer==2?APP_WHITE_COLOR:Colors.white54),),
                        leading: Icon(Icons.slow_motion_video_outlined,color: currentDrawer==2?APP_WHITE_COLOR:Colors.white54,),
                        onTap: (){
                          Navigator.pushNamed(context, TEACHERS_BOOKING);
                          setState(() {
                            currentDrawer=2;
                          });
                        },
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      ListTile(
                        title: Text("Messages",style: AppFontStyle.bodysTextStyle(currentDrawer==3?APP_WHITE_COLOR:Colors.white54),),
                        leading: Icon(Icons.message_outlined,color: currentDrawer==3?APP_WHITE_COLOR:Colors.white54,),
                        onTap: (){
                          Navigator.pushNamed(context, TIMER);
                          setState(() {
                            currentDrawer=3;
                          });
                        },
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      ListTile  (
                        title: Text("Courses",style: AppFontStyle.bodysTextStyle(currentDrawer==4?APP_WHITE_COLOR:Colors.white54),),
                        leading: Icon(Icons.text_snippet_outlined,color: currentDrawer==4?APP_WHITE_COLOR:Colors.white54,),
                        onTap: (){
                          Navigator.pushNamed(context, MY_ACTIVITY);
                          setState(() {
                            currentDrawer=4;
                          });
                        },
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      ListTile(
                        title: Text("E-Book",style: AppFontStyle.bodysTextStyle(currentDrawer==5?APP_WHITE_COLOR:Colors.white54),),
                        leading: Icon(LineIcons.bookOpen,color: currentDrawer==5?APP_WHITE_COLOR:Colors.white54,),
                        onTap: (){
                          Navigator.pushNamed(context, SCAN);
                          setState(() {
                            currentDrawer=5;
                          });
                        },
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      ListTile(
                        title: Text("Settings",style: AppFontStyle.bodysTextStyle(currentDrawer==6?APP_WHITE_COLOR:Colors.white54),),
                        leading: Icon(Icons.settings,color: currentDrawer==6?APP_WHITE_COLOR:Colors.white54,),
                        onTap: (){
                          setState(() {
                            currentDrawer=6;
                          });
                        },
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      ListTile(
                        title: Text("Logout",style: AppFontStyle.bodysTextStyle(currentDrawer==7?APP_WHITE_COLOR:Colors.white54),),
                        leading: Icon(Icons.logout,color: currentDrawer==7?APP_WHITE_COLOR:Colors.white54,),
                        onTap: (){
                          setState(() {
                            currentDrawer=7;
                          });
                        },
                      ),

                    ],
                  ),
                ),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
         ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
           clipBehavior: Clip.antiAlias,
           notchMargin: 6,
          child: Container(
            height: 60,
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    setState(() {
                      currentScreen=HomePage();
                      currentTab=0;
                    });
                  },

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18,6,12,6),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.home_outlined,color: currentTab==0 ?APP_BLUE_COLOR:APP_BLACK_COLOR,),
                        Text("Home",style: TextStyle(
                            color: currentTab==0 ?APP_BLUE_COLOR:APP_BLACK_COLOR,
                            fontWeight: currentTab==0 ? FontWeight.w600 : FontWeight.normal
                        ),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      currentScreen=  Courses();
                      currentTab=1;
                    });
                  },

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12,6,12,6),
                    child: Column(
                      children: <Widget>[
                        Icon(LineIcons.bookOpen,color: currentTab==1 ?APP_BLUE_COLOR:APP_BLACK_COLOR,),
                        Text("Books",style: TextStyle(
                            color: currentTab==1 ?APP_BLUE_COLOR:APP_BLACK_COLOR,
                            fontWeight: currentTab==1 ? FontWeight.w600 : FontWeight.normal
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                InkWell(
                  onTap: (){
                    setState(() {
                      currentScreen= Text('Search', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold));
                      currentTab=2;
                    });
                  },

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12,6,12,6),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.search,color: currentTab==2 ?APP_BLUE_COLOR:APP_BLACK_COLOR,),
                        Text("Search",style: TextStyle(
                            color: currentTab==2 ?APP_BLUE_COLOR:APP_BLACK_COLOR,
                            fontWeight: currentTab==2 ? FontWeight.w600 : FontWeight.normal
                        ),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      currentScreen=Text('Menu', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold));
                      currentTab=3;
                    });
                  },

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12,6,18,6),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.menu,color: currentTab==3 ?APP_BLUE_COLOR:APP_BLACK_COLOR,),
                        Text("Menu",style: TextStyle(
                            color: currentTab==3 ?APP_BLUE_COLOR:APP_BLACK_COLOR,
                            fontWeight: currentTab==3 ? FontWeight.w600 : FontWeight.normal
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      )

    );
  }
}