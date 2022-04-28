import 'package:fitness_app/screens/seach_section/trainer_tabBar/easy.dart';
import 'package:fitness_app/screens/sesion_list+tab2.dart';
import 'package:fitness_app/screens/sestion_tab.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
class sesion_list extends StatefulWidget {
  @override
  _sesion_listState createState() => _sesion_listState();
}

class _sesion_listState extends State<sesion_list>with SingleTickerProviderStateMixin {
  TabController? _controller;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 2, vsync: this);

}
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          'Session List',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // decoration: BoxDecoration(
                //     color: AppColors.grey,
                //     borderRadius: BorderRadius.only(
                //         topRight: Radius.circular(10),
                //         topLeft: Radius.circular(10))),
                child: TabBar(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  controller: _controller,
                  indicatorColor: AppColors.t2,
                  tabs: [
                    // Tab(icon: Icon(Icons.flight,color: Colors.white,)),
                    Tab(
                      child: Text(
                        "Upcoming Session",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Coach List',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              height: height / 1.3,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TabBarView(
                controller: _controller,
                children: [
                  session_tab2(),
                  session_tab(),
                ],
              ),
            ),
          ],
        ),
      ),

    ));
  }
}
