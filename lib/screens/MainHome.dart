import 'dart:io';
import 'package:fitness_app/screens/bottom_nav/fees.dart';
import 'package:fitness_app/screens/bottom_nav/home.dart';
import 'package:fitness_app/screens/bottom_nav/newutrition.dart';
import 'package:fitness_app/screens/bottom_nav/profile.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottom_nav/neutrition_part.dart';
class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final List<Widget> screens=[
    HomeScreen(),
    neutrition_part(),
    fees(),profile()
  ];
  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen=HomeScreen();
  int current_tab=0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async {
        current_tab==1?Navigator.push(context, MaterialPageRoute(builder: (_)=>MainHome()))
            :current_tab==2?Navigator.push(context, MaterialPageRoute(builder: (_)=>MainHome())):current_tab==3?Navigator.push(context, MaterialPageRoute(builder: (_)=>MainHome())):showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Confirm Exit"),
                content: Text("Are you sure you want to exit?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("YES"),
                    onPressed: () {
                      exit(0);
                    },
                  ),
                  FlatButton(
                    child: Text("NO"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            }
        );
        return true;
      },
      child: Scaffold(
        // endDrawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       //  UserAccountsDrawerHeader(
        //       //
        //       //   currentAccountPicture: CircleAvatar(
        //       //     backgroundImage: NetworkImage(
        //       //       'https://i1.rgstatic.net/ii/profile.image/654463341694976-1533047628075_Q512/Abir-Rahman.jpg'
        //       //     )
        //       //   ),
        //       //   accountEmail: Text('Abir1@example.com'),
        //       //   accountName: InkWell(
        //       //     onTap: (){
        //       //       Navigator.push(context, MaterialPageRoute(builder: (_)=>school_profile()));
        //       //
        //       //     },
        //       //     child: Text(
        //       //       'Abir Rahman',
        //       //       style: TextStyle(fontSize: 14),
        //       //     ),
        //       //   ),
        //       //   decoration: BoxDecoration(
        //       //     color: Colors.black87,
        //       //   ),
        //       // ),
        //
        //       ListTile(
        //         leading: const Icon(Icons.logout),
        //         title: const Text(
        //           'Logout',
        //           style: TextStyle(fontSize: 14),
        //         ),
        //         onTap: () async {
        //           SharedPreferences prefs =
        //           await SharedPreferences.getInstance();
        //           prefs.clear();
        //
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (_) => login_screen()));
        //         },
        //       ),
        //
        //       // ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Class',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>class_screen()));
        //       //
        //       //
        //       //   },
        //       // ),ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Section',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>section_screen()));
        //       //
        //       //
        //       //   },
        //       // )
        //       //
        //       // ,ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Group',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>group_screen()));
        //       //
        //       //
        //       //   },
        //       // )
        //       // ,
        //       // ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Subject',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>subject_screen()));
        //       //
        //       //
        //       //   },
        //       // )
        //       // ,
        //       // ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Department',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>dept_screen()));
        //       //
        //       //
        //       //   },
        //       // )
        //       // ,ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Teacher',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>teacher_screen()));
        //       //
        //       //
        //       //   },
        //       // )
        //       // ,ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Students',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>student_screen()));
        //       //
        //       //
        //       //   },
        //       // )
        //       // ,
        //       // ListTile(
        //       //   leading: const Icon(Icons.house),
        //       //   title: const Text(
        //       //     'Result',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>result()));
        //       //
        //       //
        //       //   },
        //       // ),
        //       // ListTile(
        //       //   leading: const Icon(Icons.apartment),
        //       //   title: const Text(
        //       //     'Attendance',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>attendence()));
        //       //
        //       //   },
        //       // ), ListTile(
        //       //   leading: const Icon(Icons.apartment),
        //       //   title: const Text(
        //       //     'Announcements',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>announcements()));
        //       //
        //       //
        //       //   },
        //       // ),ListTile(
        //       //   leading: const Icon(Icons.apartment),
        //       //   title: const Text(
        //       //     'Assignments',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () {
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>assignments()));
        //       //
        //       //   },
        //       // ),
        //       // ListTile(
        //       //   leading: const Icon(Icons.logout),
        //       //   title: const Text(
        //       //     'Logout',
        //       //     style: TextStyle(fontSize: 14),
        //       //   ),
        //       //   onTap: () async{
        //       //     SharedPreferences prefs = await SharedPreferences.getInstance();
        //       //
        //       //     Navigator.push(context, MaterialPageRoute(builder: (_)=>login_screen()));
        //       //
        //       //   },
        //       // ),
        //       // Container(
        //       //     // This align moves the children to the bottom
        //       //     child: Align(
        //       //         alignment: FractionalOffset.bottomCenter,
        //       //         // This container holds all the children that will be aligned
        //       //         // on the bottom and should not scroll with the above ListView
        //       //         child: Container(
        //       //           height: height / 10,
        //       //           decoration: BoxDecoration(
        //       //             color: Colors.black54,
        //       //           ),
        //       //         )))
        //     ],
        //   ),
        // ),

        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),

        bottomNavigationBar: BottomAppBar(
          color:Colors.white,

          notchMargin: 5,
          child: Container(
            height: MediaQuery.of(context).size.height/14,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: MaterialButton(
                    minWidth: 20,
                    onPressed: (){
                      setState(() {
                        currentScreen=HomeScreen();
                        current_tab=0;
                      });

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        current_tab==0? SvgPicture.asset("assets/images/icon1.svg"):SvgPicture.asset("assets/images/icon2.svg"),
                        Text(
                            "Home",
                            style:TextStyle(
                              fontSize: 12,
                              color:current_tab==0?AppColors.material:AppColors.textcolor,
                            )
                        )
                      ],
                    ),

                  ),
                ),
                Container(
                  child: MaterialButton(

                    minWidth: 20,

                    onPressed: (){
                      setState(() {
                        currentScreen=neutrition_part();
                        current_tab=1;
                      });

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        current_tab==1? SvgPicture.asset("assets/images/icon3.svg"):SvgPicture.asset("assets/images/icon9.svg"),
                        Text(
                            "Nutritionist chart",
                            style:TextStyle(
                              fontSize: 12,
                              color:current_tab==1?AppColors.material:AppColors.textcolor,
                            )
                        )
                      ],
                    ),

                  ),
                ),
                Container(
                  child: MaterialButton(
                    minWidth: 20,

                    onPressed: (){
                      setState(() {
                        currentScreen=fees();
                        current_tab=2;
                      });

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        current_tab==2? SvgPicture.asset("assets/images/icon6.svg"):SvgPicture.asset("assets/images/icon4.svg"),
                        Text(
                            "Fees",
                            style:TextStyle(
                              fontSize: 12,
                              color:current_tab==2?AppColors.material:AppColors.textcolor,
                            )
                        )
                      ],
                    ),

                  ),
                ),
                // MaterialButton(                    minWidth: 20,
                //
                //   onPressed: (){
                //
                //
                //   },
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //
                //       Padding(
                //         padding: const EdgeInsets.only(top: 25.0),
                //         child: Text(
                //           "Best Aid",
                //           style: GoogleFonts.lato(
                //               fontSize: 18,
                //               fontWeight: FontWeight.w600,
                //
                //               color: Colors.white
                //           ),
                //         ),
                //       )
                //     ],
                //   ),
                //
                // ),
                Container(
                  child: MaterialButton(                    minWidth: 20,

                    onPressed: (){
                      setState(() {
                        currentScreen=profile();
                        current_tab=3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        current_tab==3? SvgPicture.asset("assets/images/icon8.svg"):SvgPicture.asset("assets/images/icon7.svg"),
                        Text(
                            "Profile",
                            style:TextStyle(
                              fontSize: 12,
                              color:current_tab==3?AppColors.material:AppColors.textcolor,
                            )
                        )
                      ],
                    ),

                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
