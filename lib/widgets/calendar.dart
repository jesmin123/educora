
import 'package:educora/constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class MyCalendar extends StatefulWidget {
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TableCalendar(
        initialCalendarFormat: CalendarFormat.month,
        calendarStyle: CalendarStyle(
          todayColor: Colors.blueGrey,
          selectedColor: APP_BLUE_COLOR,
        ),
        onDaySelected: (date,events,holidays){
          print('$date');
        },
        calendarController: _controller,),
    );
  }
}