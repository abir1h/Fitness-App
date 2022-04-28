import 'dart:ui';

import 'package:fitness_app/screens/posts.dart';
import 'package:fitness_app/screens/search.dart';
import 'package:fitness_app/screens/write_post.dart';
import 'package:fitness_app/utils/Custom_drawer.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'chat_screen.dart';
import 'comments.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool isFav = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: CustomDrawer(height: height, width: width),
        backgroundColor: Color(0xff070206),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.sort,
              color: Colors.white,
            ),
          ),
          actions: [
            SvgPicture.asset('assets/icons/chats.svg'),
            SizedBox(width: width * 0.02),
            SvgPicture.asset('assets/icons/nofi.svg'),
            SizedBox(width: width * 0.03),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.03),
                const Text(
                  'Welcome, Mamun',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //!Search
                SizedBox(height: height * 0.03),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(() => search(), duration: Duration(milliseconds: 500), //duration of transitions, default 1 sec
                            transition: Transition.zoom );
                      },
                      child: Container(
                          height: height/18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.grey
                          ),child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                        children: [
                            Icon(Icons.search,color:Colors.white),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Search',style: TextStyle(color: Colors.white),),
                            )
                        ],
                      ),
                          )
                      ),
                    )
                ),

                //!Coach
                SizedBox(height: height * 0.03),
                Text(
                  'Coach',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.03),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => ChatScreen(chatName: 'Silva Roy'));
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/p21.jpg'),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      InkWell(
                        onTap: () {
                          Get.to(() => ChatScreen(chatName: 'Silva Roy'));
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/p22.jpg'),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      InkWell(
                        onTap: () {
                          Get.to(() => ChatScreen(chatName: 'Silva Roy'));
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/p23.jpg'),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      InkWell(
                        onTap: () {
                          Get.to(() => ChatScreen(chatName: 'Silva Roy'));
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/p24.jpg'),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      InkWell(
                        onTap: () {
                          Get.to(() => ChatScreen(chatName: 'Silva Roy'));
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/p25.jpg'),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      InkWell(
                        onTap: () {
                          Get.to(() => ChatScreen(chatName: 'Silva Roy'));
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/p22.jpg'),
                        ),
                      ),

                      SizedBox(width: width * 0.02),
                    ],
                  ),
                ),

                //!recomanded traings
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      border: Border.all(color: AppColors.grey)
                    ),
                    child:Column(
                      children: [
                        Row(
                          children:[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/p22.jpg'),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(8),
                                      border: Border.all(color: AppColors.grey)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),

                                      decoration: InputDecoration(

                                        hintText: "Write Post",hintStyle: TextStyle(fontWeight: FontWeight.w700,color: Colors.white)

                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  Get.to(
                                      ()=> write_psot(),
                                    transition: Transition.rightToLeft,
                                  );
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.image,color: Colors.white,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Photo",style: TextStyle(color: Colors.white),),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Get.to(
                                        ()=> write_psot(),
                                    transition: Transition.rightToLeft,
                                  );
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.play_arrow,color: Colors.white,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Video",style: TextStyle(color: Colors.white),),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.t2,
                                  borderRadius: BorderRadius.circular(10),

                                ),child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Post",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                ),
                Text(
                  'Recommended Trainings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: height * 0.07, 
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: Color(0xff500C44),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 8),
                            child: Text(
                              'Fitness Stretching',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.16,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Color(0xff051532),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.03, left: width * 0.05),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Jan 19, 08:30 AM',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Container(
                                      height: height * 0.045,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff500C44),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.timer_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '15 mint',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      left: width * 0.6,
                      top: height * 0.02,
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/stretch.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: height * 0.03),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: Color(0xff032B38),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 8),
                            child: Text(
                              'Weight Training',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.16,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Color(0xff051532),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.03, left: width * 0.05),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Jan 26, 03:30 PM',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Container(
                                      height: height * 0.045,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff032B38),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.timer_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '15 mint',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      left: width * 0.6,
                      top: height * 0.02,
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/barbell.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                //!PostPart
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
                        SizedBox(height: height * 0.04),
                      ],
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
