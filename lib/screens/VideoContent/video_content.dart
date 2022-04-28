import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fitness_app/screens/seach_section/trainer_tabBar/easy.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'content_tabs/contents.dart';
class video_content extends StatefulWidget {
  @override
  _video_contentState createState() => _video_contentState();
}

class _video_contentState extends State<video_content>   with SingleTickerProviderStateMixin{
  var _selectedValue;
  TabController? _controller;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 3, vsync: this);

}

  @override
  Widget build(BuildContext context) {var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.background,

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
          'Video Content',
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DatePicker(
                DateTime.now(),height: 100,
                initialSelectedDate: DateTime.now(),
                selectionColor: AppColors.t2,

                activeDates: [

                  DateTime.now()
                ],

                selectedTextColor: Colors.white,dateTextStyle: TextStyle(color: Colors.white),
                dayTextStyle: TextStyle(color: Colors.white),
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TabBar(
                padding: EdgeInsets.only(left: 20, right: 10),
                controller: _controller,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.white,
                onTap: (value) {
setState(() {

});                },
                tabs: [
                  // Tab(icon: Icon(Icons.flight,color: Colors.white,)),
                  Tab(
                    child: Text(
                      "All (12)",
                      style: TextStyle(
                          color:_controller!.index==0? AppColors.t2:Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Finished (4)',
                      style: TextStyle(
                          color:_controller!.index==1? AppColors.t2:Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Upcoming (4)',
                      style: TextStyle(
                          color:_controller!.index==2? AppColors.t2:Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height / 1.3,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TabBarView(
                controller: _controller,
                children: [
                  content(),
                  content(),
                  content(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
