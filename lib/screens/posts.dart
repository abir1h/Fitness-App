import 'package:fitness_app/screens/comments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Post',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.back();
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width / 15),
              child: SvgPicture.asset('assets/icons/nofi.svg'),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.03),
                Column(
                  children: [
                    //!Circleavatar, name, time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/p22.jpg'),
                            ),
                            SizedBox(width: width * 0.05),
                            Text(
                              'Shahriar Islam',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '3 hours ago',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff706767),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    //!image
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          PostScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Container(
                        width: width,
                        height: height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/g1.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    //!like, commetn
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        //!Like
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFav = !isFav;
                            });
                          },
                          child: Icon(
                            isFav ? Icons.favorite : Icons.favorite_border,
                            color: isFav ? Colors.red : Color(0xff898488),
                          ),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          '1.2k',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(width: width * 0.08),

                        //!Comment
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              CommentsScreen(),
                              transition: Transition.rightToLeft,
                            );
                          },
                          child: Icon(
                            Icons.mode_comment_outlined,
                            color: Color(0xff898488),
                          ),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          '43',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    //!caption
                    SizedBox(height: height * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Shahriar Islam',
                              style: TextStyle(
                                color: AppColors.magenta,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: width * 0.03),
                            Text(
                              'I thnk this workout plan of yours is',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'gonna pay off really soon. I can see the shapes : )',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                      ],
                    ),
                    Container(
                      height: height * 0.06,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff898488)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff898488)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff898488)),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff898488)),
                          ),
                          hintText: 'To say with you...',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.chat,
                            color: Color(0xff898488),
                          ),
                          suffixIcon: Icon(
                            Icons.send,
                            color: AppColors.magenta,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
