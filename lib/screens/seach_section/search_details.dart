import 'package:fitness_app/screens/seach_section/sesion_request.dart';
import 'package:fitness_app/screens/seach_section/trainer_tabBar/easy.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

import '../chat_screen.dart';

class details_search extends StatefulWidget {
  @override
  _details_searchState createState() => _details_searchState();
}

class _details_searchState extends State<details_search>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
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
          'Trainers',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/t1.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Silva Roy',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.person_outline_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            'California',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
                    onTap: () {
                      Get.to(() => ChatScreen(chatName: 'Silva Roy'));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 28.0),
                      child: SvgPicture.asset('assets/icons/chats.svg'),
                    )),
              ],
            ),
            SizedBox(
              height: height / 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height / 12,
                  width: width / 2.8,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '32',
                          style: TextStyle(
                              color: AppColors.t2,
                              fontSize: 35,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Active",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: height / 12,
                  width: width / 2.8,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '21',
                          style: TextStyle(
                              color: AppColors.t2,
                              fontSize: 35,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Active",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Get.to(() => sesion_request(), duration: Duration(milliseconds: 500), //duration of transitions, default 1 sec
                        transition: Transition.leftToRight );
                  },
                  child: Container(
                    height: height / 18,
                    width: width / 2.6,
                    decoration: BoxDecoration(
                        color: AppColors.t2,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      "Session Request",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: height / 18,
                  width: width / 3,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.t2),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    "About me",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: height / 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trainings",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        color: AppColors.t2,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 35,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                child: TabBar(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  controller: _controller,
                  indicatorColor: AppColors.t2,
                  tabs: [
                    // Tab(icon: Icon(Icons.flight,color: Colors.white,)),
                    Tab(
                      child: Text(
                        "Easy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Medium',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Hard',
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
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TabBarView(
                controller: _controller,
                children: [
                  easy(),
                  easy(),
                  easy(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
