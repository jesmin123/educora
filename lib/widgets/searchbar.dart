import 'package:educora/constants/colors.dart';
import 'package:fbutton/fbutton.dart';
import 'package:flutter/material.dart';
import 'package:fsearch/fsearch.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  FSearchController controller1;
  bool searching = false;
  @override
  void initState(){
    controller1 = FSearchController();
    super.initState();
  }
  Widget build(BuildContext context) {
    return FSearch(
        shadowColor: Colors.grey[200],
        shadowBlur: 5.0,
        shadowOffset: Offset(3.0, 3.0),
        height: 45.0,
        corner: FSearchCorner.all(3.0),
        backgroundColor: APP_TEAL_COLOR,
        style: TextStyle(
            fontSize: 14.0, height: 1.2, color: Color(0xff333333)),
        margin: EdgeInsets.only(left: 12.0, right: 12.0),
        padding: EdgeInsets.only(
            left: 6.0, right: 6.0, top: 3.0, bottom: 3.0),
        suffixes: [
          FButton(
            onPressed: () {
            },
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            color: Colors.transparent,
            image: Icon(
              Icons.search,
              size: 20,
              color: Colors.grey,
            ),
          )
        ],

        /// Hints
        hints: [
          "Search for new Knowladge!",
          "Search for new Knowladge!"

        ],


        hintSwitchEnable: true,

        hintSwitchType: FSearchAnimationType.Fade,

        /// 点击键盘搜索时触发
        ///
        /// Fired when you click on the keyboard to search
        onSearch: (value) {
          setState(() {
            searching = true;
          });
        },
      );
  }
}
