import 'package:fitness_app/screens/AuthScreens/login_screen.dart';
import 'package:fitness_app/screens/LiveStreaming.dart';
import 'package:fitness_app/screens/VideoContent/video_content.dart';
import 'package:fitness_app/screens/bmi_calc.dart';
import 'package:fitness_app/screens/diet_tool.dart';
import 'package:fitness_app/screens/find_a_trainer.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/screens/macro_calculator.dart';
import 'package:fitness_app/screens/message_screen.dart';
import 'package:fitness_app/screens/profile_screen.dart';
import 'package:fitness_app/screens/social_media.dart';
import 'package:fitness_app/screens/subscription.dart';
import 'package:fitness_app/screens/training_tool/trainign_tool.dart';
import 'package:fitness_app/utils/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../utils/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.material,
      child: ListView(
        padding: EdgeInsets.only(right: 50),
        children: [
          SizedBox(
            height: height / 30,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              )),
          ListTile(
            onTap: () {
              Get.offAll(() => CustomBottomNavigationBar());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => ProfileScreen());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (_) => home(),
              //   ),
              // );
              Get.to(() => video_content(), duration: Duration(milliseconds: 500), //duration of transitions, default 1 sec
                  transition: Transition.leftToRight );
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.video_collection_rounded,
              color: Colors.white,
            ),
            title: Text(
              "Video Content",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => MessageScreen());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            title: Text(
              "Conversation with Trainer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
            title: Text(
              "Food Measurement",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: (){
              Get.to(
                    ()=> macro_calculator(),
                transition: Transition.rightToLeft,
              );
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
            title: Text(
              "Macro Calculator",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => DietTool());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.no_food,
              color: Colors.white,
            ),
            title: Text(
              "Diet Tool",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ), ListTile(
            onTap: () {
              // Get.to(() => trainign_tool(), duration: Duration(milliseconds: 500), //duration of transitions, default 1 sec
              //     transition: Transition.leftToRight );
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.train,
              color: Colors.white,
            ),
            title: Text(
              "Training Tool",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => BMICalc());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.calculate_outlined,
              color: Colors.white,
            ),
            title: Text(
              "BMI Calculator",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => FindATrainer());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.person_search,
              color: Colors.white,
            ),
            title: Text(
              "Find a trainer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(live_training());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.live_tv,
              color: Colors.white,
            ),
            title: Text(
              "Live Training",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => SocialMedia());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.social_distance,
              color: Colors.white,
            ),
            title: Text(
              "Social Page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => subscription());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.money,
              color: Colors.white,
            ),
            title: Text(
              "Payment",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.offAll(LoginScreen());
            },
            horizontalTitleGap: .1,
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
