import 'package:fitness_app/screens/personal_information_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SelectPositionScreen extends StatefulWidget {
  const SelectPositionScreen({Key? key}) : super(key: key);

  @override
  State<SelectPositionScreen> createState() => _SelectPositionScreenState();
}

class _SelectPositionScreenState extends State<SelectPositionScreen> {
  bool isTrainee = true;
  bool hasBeenSelected = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.1),
                Text(
                  'Select your Position'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.18),
                Container(
                  height: height * 0.65,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: AppColors.magenta,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isTrainee = false;
                                hasBeenSelected = true;
                              });
                            },
                            child: isTrainee
                                ? Image.asset('assets/images/trainer2.png')
                                : Image.asset('assets/images/trainer1.png'),
                          ),
                          SizedBox(width: width * 0.03),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isTrainee = true;
                                hasBeenSelected = true;
                              });
                            },
                            child: isTrainee
                                ? Image.asset('assets/images/trainee1.png')
                                : Image.asset('assets/images/trainee2.png'),
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.15),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            PersonalInformationScreen(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 250),
                          );
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: hasBeenSelected
                                ? Colors.green
                                : Color(0xff7E7E7E),
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
