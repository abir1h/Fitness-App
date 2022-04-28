import 'package:fitness_app/screens/bmi_calc.dart';
import 'package:fitness_app/screens/diet_tool.dart';
import 'package:fitness_app/screens/find_a_trainer.dart';
import 'package:fitness_app/screens/message_screen.dart';
import 'package:fitness_app/screens/social_media.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeesScreen extends StatefulWidget {
  const FeesScreen({Key? key}) : super(key: key);

  @override
  State<FeesScreen> createState() => _FeesScreenState();
}

class _FeesScreenState extends State<FeesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('Fees')],
        ),
      ),
    );
  }
}
