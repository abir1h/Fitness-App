import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Social Media'),
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
                SizedBox(height: height * 0.03),
                Container(
                  height: height * 0.8,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xff942299),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width / 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/yt.svg'),
                            SizedBox(width: width * 0.05),
                            Text(
                              'Youtube',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.15),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/fb2.svg'),
                            SizedBox(width: width * 0.05),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.15),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/insta.svg'),
                            SizedBox(width: width * 0.05),
                            Text(
                              'Instagram',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
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
