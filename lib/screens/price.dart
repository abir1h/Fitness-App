import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'mainHome.dart';
class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) { var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
  return SafeArea(child: Scaffold(
    backgroundColor:  AppColors.background,
    appBar: AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text("Select Payment Method",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
    ),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Payment Method',style: TextStyle(
                color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/10,
                    width: width/4,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(
                            0, 1), // changes position of shadow
                      ),],
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage('assets/images/card1.png')),

                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/10,
                    width: width/4,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(
                            0, 1), // changes position of shadow
                      ),],
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage('assets/images/card2.jpg')),

                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/10,
                    width: width/4,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(
                            0, 1), // changes position of shadow
                      ),],
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage('assets/images/card3.png')),

                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Name on card',style: TextStyle(
                color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height / 18,
              width: width,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Name',
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Expiration Date',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 16),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: height / 18,
                          width: width/2.8,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("10/10/2022",style: TextStyle(color: Colors.grey),),
                                Icon(Icons.calendar_today,color: AppColors.t2,)
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Security Code ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 16),),
                        Icon(Icons.request_page_rounded,color: AppColors.t2,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: height / 18,
                          width: width/2.3,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("10/10/2022",style: TextStyle(color: Colors.grey),),
                                Icon(Icons.calendar_today,color: AppColors.t2,)
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.all(AppColors.t2),
                value: ischecked,
                onChanged: (value) {
                  setState(() {
                    ischecked = value!;
                    print(ischecked.toString());
                  });
                },
              ),
              Text(
                'Remember my card details',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Get.to(() =>  HomeScreen(), duration: const Duration(milliseconds: 500), //duration of transitions, default 1 sec
                    transition: Transition.zoom );},
              child: Container(
                height: height/20,
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.t2,
                  borderRadius: BorderRadius.circular(8),

                ),child: Center(child: Text("pay 0 ".toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
              ),
            ),
          )
        ],
      ),
    ),
  ));
  }
}
