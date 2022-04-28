import 'package:fitness_app/screens/chat_screen.dart';
import 'package:fitness_app/utils/Custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
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
            'Messages',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: [
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
                //!Search
                SizedBox(height: height * 0.03),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff4D4D4D),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
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
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p21.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p22.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p23.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p24.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p25.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p25.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p25.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p25.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('assets/images/p25.jpg'),
                      )
                    ],
                  ),
                ),

                //!recomanded traings
                SizedBox(height: height * 0.03),
                Text(
                  'Message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.03),
                TrainerTile(height: height, width: width),
                TrainerTile(height: height, width: width),
                TrainerTile(height: height, width: width),
                TrainerTile(height: height, width: width),
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
    return GestureDetector(
      onTap: () {
        Get.to(
          ChatScreen(chatName: 'Silva Roy'),
          transition: Transition.rightToLeft,
        );
      },
      child: Container(
        height: height * 0.1,
        width: width,
        decoration: BoxDecoration(
          // color: Color(0xff4D4D4D),
          borderRadius: BorderRadius.circular(10),
        ),
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
                      'Silva Roy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Lorem ipsum dolor sit amet,  08:30 AM',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
