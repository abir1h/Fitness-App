import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
class sesion_request extends StatefulWidget {
  @override
  _sesion_requestState createState() => _sesion_requestState();
}

class _sesion_requestState extends State<sesion_request> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  String? formattedDate;
  @override
  Widget build(BuildContext context) { var heigth = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Select Date & Time',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/images/t1.jpeg'),
            ),
          ),
        ],
      ),

      backgroundColor: AppColors.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:Container(
        height: heigth/35,
        width: width/6,
        decoration: BoxDecoration(

          color: AppColors.t2,
          borderRadius: BorderRadius.circular(5)

        ),child: Center(
        child: Text("Done",style: TextStyle(color: Colors.white),),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TableCalendar(


                    focusedDay: selectedDay,
                    firstDay: DateTime(1990),
                    lastDay: DateTime(2050),
                    calendarFormat: format,
                    onFormatChanged: (CalendarFormat _format) {
                      setState(() {
                        format = _format;
                      });
                    },
                    startingDayOfWeek: StartingDayOfWeek.sunday,
                    daysOfWeekVisible: true,

                    //Day Changed
                    onDaySelected: (DateTime selectDay, DateTime focusDay) {
                      setState(() {
                        selectedDay = selectDay;
                        focusedDay = focusDay;
                        formattedDate =
                            DateFormat.yMMMMd('en_US').format(focusedDay);
                      });
                      print(formattedDate);
                    },
                    selectedDayPredicate: (DateTime date) {
                      return isSameDay(selectedDay, date);
                    },

                    //To style the Calendar
                    calendarStyle: CalendarStyle(
                      isTodayHighlighted: true,


                      selectedDecoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      selectedTextStyle: TextStyle(color: Colors.white),
                      todayDecoration: BoxDecoration(
                        color: Color(0xff6C63FE),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      defaultDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      weekendTextStyle: TextStyle(color: Colors.grey),
                      outsideTextStyle:  TextStyle(color: Colors.white),

                      holidayTextStyle:  TextStyle(color: Colors.grey),
                      defaultTextStyle:  TextStyle(color: Colors.white),
                      disabledTextStyle:  TextStyle(color: Colors.grey),

                      weekendDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle:  TextStyle(color: Colors.white),
                      weekendStyle:  TextStyle(color: Colors.white),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: true,
                      titleCentered: true,
                      formatButtonShowsNext: false,titleTextStyle: TextStyle(color: Colors.white),

                      formatButtonDecoration: BoxDecoration(
                        color: Color(0xff6C63FE),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      formatButtonTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Slots available',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            Row(
              children: [
                Container(
                  height: heigth/40,
                  width: width/8,
                  decoration: BoxDecoration(
                    color: AppColors.t2,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(child: Text('01.23',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: heigth/40,
                    width: width/8,
                    decoration: BoxDecoration(
                      // color: AppColors.t2,
                      border: Border.all(color: AppColors.t2,),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('01.23',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: heigth/40,
                    width: width/8,
                    decoration: BoxDecoration(
                      // color: AppColors.t2,
                      border: Border.all(color: AppColors.t2,),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('01.23',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: heigth/40,
                    width: width/8,
                    decoration: BoxDecoration(
                      // color: AppColors.t2,
                      border: Border.all(color: AppColors.t2,),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('01.23',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: heigth/40,
                    width: width/8,
                    decoration: BoxDecoration(
                      // color: AppColors.t2,
                      border: Border.all(color: AppColors.t2,),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('01.23',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    ));
  }
}
