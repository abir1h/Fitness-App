import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FindATrainer extends StatefulWidget {
  const FindATrainer({Key? key}) : super(key: key);

  @override
  State<FindATrainer> createState() => _FindATrainerState();
}

class _FindATrainerState extends State<FindATrainer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Find A Trainer'),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width / 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/p22.jpg'),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 20),
            child: Column(
              children: [
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
                SizedBox(height: height * 0.02),
                TrainerTile(height: height, width: width),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TrainerTile extends StatelessWidget {
  const TrainerTile({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xff4D4D4D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/p22.jpg',
                  ),
                ),
                SizedBox(width: width * 0.03),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hilary Ouse',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'About trainer',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SvgPicture.asset('assets/icons/chats.svg'),
          ],
        ),
      ),
    );
  }
}
