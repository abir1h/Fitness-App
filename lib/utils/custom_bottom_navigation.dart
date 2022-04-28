import 'dart:io';
import 'package:fitness_app/screens/bottom_nav/neutrition_part.dart';
import 'package:fitness_app/screens/bottom_nav/newutrition.dart';
import 'package:fitness_app/screens/fees_screen.dart';
import 'package:fitness_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/home_screen.dart';
import 'colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  int current_tab = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        current_tab == 1
            ? Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CustomBottomNavigationBar(),
                ),
              )
            : current_tab == 2
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CustomBottomNavigationBar(),
                    ),
                  )
                : current_tab == 3
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CustomBottomNavigationBar(),
                        ),
                      )
                    : showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Confirm Exit"),
                            content:
                                const Text("Are you sure you want to exit?"),
                            actions: <Widget>[
                              TextButton(
                                child: const Text("YES"),
                                onPressed: () {
                                  exit(0);
                                },
                              ),
                              TextButton(
                                child: const Text("NO"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
        return true;
      },
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          notchMargin: 5,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 12,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomeScreen();
                      current_tab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 0
                          ? SvgPicture.asset("assets/images/icon1.svg")
                          : SvgPicture.asset("assets/images/icon2.svg"),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 0
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = neutrition_part();
                      current_tab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 1
                          //!Need to change the icon
                          ? SvgPicture.asset("assets/images/icon6.svg")
                          : SvgPicture.asset("assets/images/icon4.svg"),
                      Text(
                        "Neutration",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 1
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = const FeesScreen();
                      current_tab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 2
                          ? const Icon(
                              Icons.payments,
                              color: AppColors.material,
                            )
                          : const Icon(
                              Icons.payments_outlined,
                              color: AppColors.textcolor,
                            ),
                      Text(
                        "Fees",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 2
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = const ProfileScreen();
                      current_tab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 3
                          ? const Icon(
                              Icons.settings,
                              color: AppColors.material,
                            )
                          : const Icon(
                              Icons.settings_outlined,
                              color: AppColors.material,
                            ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 3
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
