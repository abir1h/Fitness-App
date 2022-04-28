import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
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
            'Comments',
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
                CommentTiles(height: height, width: width),
                CommentTiles(height: height, width: width),
                CommentTiles(height: height, width: width),
                CommentTiles(height: height, width: width),
                CommentTiles(height: height, width: width),
                CommentTiles(height: height, width: width),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommentTiles extends StatelessWidget {
  const CommentTiles({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: height * 0.02),
        Container(
          padding: EdgeInsets.only(left: 8, top: 8),
          height: height * 0.15,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff4D4D4D),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/p22.jpg'),
                radius: 25,
              ),
              SizedBox(width: width * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shahriar Islam',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Lorem ipsum dolor sit\nametconsectetur adipiscing elit.\nTortor, ali quet ipsum, viverra\nlaoreet maecenas. Faucibus',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height/20,
            decoration: BoxDecoration(

                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(8)
            ),child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.message,color: AppColors.grey,),
                hintText: 'Comment',
                hintStyle: TextStyle(color: AppColors.grey),
                suffixIcon: Icon(Icons.send,color: AppColors.material,)
            ),
          ),
          ),
        )
      ],
    );
  }
}
