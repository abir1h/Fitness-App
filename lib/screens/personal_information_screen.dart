import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:fitness_app/utils/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  bool ismale = true; //TODO
  int currwight = 67;
  int currheightfeet = 5;
  int currheightinch = 5;
  int currage = 19;
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
                SizedBox(height: height * 0.05),
                Text(
                  'Select your Position'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/male_active.svg'),
                    SizedBox(width: width * 0.06),
                    SvgPicture.asset(
                      'assets/images/female_active.svg',
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                Container(
                  height: height * 0.7,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: AppColors.magenta,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        //!Weight
                        SizedBox(height: height * 0.01),

                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'KG',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        NumberPicker(
                          value: currwight,
                          minValue: 1,
                          maxValue: 200,
                          step: 1,
                          itemHeight: 50,
                          itemWidth: 50,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          selectedTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                          axis: Axis.horizontal,
                          onChanged: (value) => setState(
                            () => currwight = value,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white),
                          ),
                        ),

                        //!height feet
                        SizedBox(height: height * 0.02),

                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'feet',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        NumberPicker(
                          value: currheightfeet,
                          minValue: 1,
                          maxValue: 8,
                          step: 1,
                          itemHeight: 50,
                          itemWidth: 50,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          selectedTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                          axis: Axis.horizontal,
                          onChanged: (value) => setState(
                            () => currheightfeet = value,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white),
                          ),
                        ),
                        //!height inch
                        SizedBox(height: height * 0.02),

                        Text(
                          'inches',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        NumberPicker(
                          value: currheightinch,
                          minValue: 1,
                          maxValue: 12,
                          step: 1,
                          itemHeight: 50,
                          itemWidth: 50,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          selectedTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                          axis: Axis.horizontal,
                          onChanged: (value) => setState(
                            () => currheightinch = value,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white),
                          ),
                        ),

                        //!age
                        SizedBox(height: height * 0.02),

                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        NumberPicker(
                          value: currage,
                          minValue: 1,
                          maxValue: 100,
                          step: 1,
                          itemHeight: 50,
                          itemWidth: 50,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          selectedTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                          axis: Axis.horizontal,
                          onChanged: (value) => setState(
                            () => currage = value,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white),
                          ),
                        ),

                        //!BUtton

                        SizedBox(height: height * 0.02),

                        GestureDetector(
                          onTap: () {
                            Get.to(
                              CustomBottomNavigationBar(),
                              transition: Transition.rightToLeft,
                              duration: const Duration(milliseconds: 250),
                            );
                          },
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xff7E7E7E),
                            ),
                            child: Center(
                              child: Text(
                                'Save & Proceed',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class _IntegerExample extends StatefulWidget {
//   final int minVal;
//   final int maxVal;
//   final int step;
//   final int currentVal;
//   const _IntegerExample({
//     Key? key,
//     required this.minVal,
//     required this.currentVal,
//     required this.maxVal,
//     required this.step,
//   }) : super(key: key);

//   @override
//   __IntegerExampleState createState() => __IntegerExampleState();
// }

// class __IntegerExampleState extends State<_IntegerExample> {
//   int _currentHorizontalIntValue = 10;

//   @override
//   Widget build(BuildContext context) {
//     return NumberPicker(
//       value: _currentHorizontalIntValue,
//       minValue: widget.minVal,
//       maxValue: widget.maxVal,
//       step: widget.step,
//       itemHeight: 50,
//       itemWidth: 50,
//       textStyle: TextStyle(
//         color: Colors.white,
//       ),
//       selectedTextStyle: TextStyle(
//         color: Colors.white,
//       ),
//       axis: Axis.horizontal,
//       onChanged: (value) => setState(() => _currentHorizontalIntValue = value),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: Colors.white),
//       ),
//     );
//   }
// }
