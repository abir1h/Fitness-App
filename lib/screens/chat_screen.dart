import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.chatName}) : super(key: key);
  final String chatName;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            // leading: InkWell(
            //   onTap: () {
            //     Get.back();
            //   },
            //   child: const Icon(
            //     Icons.arrow_back,
            //     color: Colors.black,
            //   ),
            // ),
            centerTitle: true,
            title: Text(
              widget.chatName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: width * 0.04),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/p23.jpg'),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: height * 0.01),
                //!Chat tile
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: height * 0.82,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ChatTile(width: width, height: height),
                            ChatTile(width: width, height: height),
                            ChatTile(
                                width: width, height: height, isSender: false),
                            ChatTile(
                                width: width, height: height, isSender: false),
                            ChatTile(width: width, height: height),
                            ChatTile(
                                width: width, height: height, isSender: false),
                          ],
                        ),
                      ),
                    ),

                    //!Send Section
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Write message",
                            prefixIcon: IconButton(
                              icon: const Icon(Icons.image),
                              onPressed: () {},
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
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

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.width,
    required this.height,
    this.isSender = true,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return isSender
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'assets/images/p21.jpg',
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Color(0xffC1CBD7).withOpacity(0.2),
                  ),
                  height: height * 0.09,
                  width: width * 0.65,
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur\ndipiscing elit. Ultricies sed hendrerit ac\nmollis sollicitudin viverra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            '12:19PM',
                            style: TextStyle(
                              color: AppColors.disabledTextColor,
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        :
        //! isSender = false
        Padding(
            padding: EdgeInsets.only(left: width * 0.19, top: 8, bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    color: Color(0xff7E7E7E),
                  ),
                  height: height * 0.09,
                  width: width * 0.65,
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur\ndipiscing elit. Ultricies sed hendrerit ac\nmollis sollicitudin viverra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            '12:19PM',
                            style: TextStyle(
                              color: AppColors.disabledTextColor,
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'assets/images/p22.jpg',
                  ),
                ),
              ],
            ),
          );
  }
}


/** Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width / 15,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: height * 0.06,
                        width: width * 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 3, left: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Write a message...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                        height: height * 0.055,
                        width: height * 0.055,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.send,
                            color: AppColors.buttonColorBlue,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
             */