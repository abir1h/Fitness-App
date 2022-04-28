import 'package:fitness_app/screens/price.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

class subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.background ,
          appBar: AppBar(
            backgroundColor: AppColors.background ,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.t2,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:height/4,
                    width: width/1,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/price.png'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Center(child: Text('Upgrade to Premium',style: TextStyle(color: AppColors.t2,fontWeight: FontWeight.bold,fontSize: 24),),),
                Center(child: Text('Unlimited swipes, Likes, Matches and so more',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 14),),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(() =>  payment(), duration: Duration(milliseconds: 400), //duration of transitions, default 1 sec
                              transition: Transition.zoom );
                        },
                        child: Container(height: height/6,width: width/4.2,
                          decoration: BoxDecoration(
                            color: AppColors.grey3,
                            borderRadius: BorderRadius.circular(5)  ,

                          ),
                          child: Column(
                            children: [
                              Container(
                                height:height/22,
                                decoration: BoxDecoration(
                                  color: AppColors.t2,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),

                                ),child: Center(child: Text('Save 66 %',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                              ),
                              Text("12",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontSize:30 ),),
                              Text("months",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize:14 ),),
                              Text("6.00/mt",style: TextStyle(color: AppColors.t2,fontWeight: FontWeight.w700,fontSize:14 ),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(height: height/6,width: width/4.2,
                        decoration: BoxDecoration(
                          color: AppColors.grey3,
                          borderRadius: BorderRadius.circular(5)  ,

                        ),
                        child: Column(
                          children: [
                            Container(
                              height:height/22,
                              decoration: BoxDecoration(
                                color: AppColors.t2,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),

                              ),child: Center(child: Text('Save 66 %',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                            ),
                            Text("12",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontSize:30 ),),
                            Text("months",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize:14 ),),
                            Text("6.00/mt",style: TextStyle(color: AppColors.t2,fontWeight: FontWeight.w700,fontSize:14 ),)
                          ],
                        ),
                      ),SizedBox(width: 20,),
                      Container(height: height/6,width: width/4.2,
                        decoration: BoxDecoration(
                          color: AppColors.grey3,
                          borderRadius: BorderRadius.circular(5)  ,
                         
                        ),
                        child: Column(
                          children: [
                            Container(
                              height:height/22,
                              decoration: BoxDecoration(
                                color: AppColors.t2,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),

                              ),child: Center(child: Text('Save 66 %',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                            ),
                            Text("12",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontSize:30 ),),
                            Text("months",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize:14 ),),
                            Text("6.00/mt",style: TextStyle(color: AppColors.t2,fontWeight: FontWeight.w700,fontSize:14 ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(child: Text('When will I be billed?',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w700,fontSize: 24),),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Yout Account will be billed at the end of your trial period (if applicable)or on confirmation of your subscription.',style: TextStyle(color:Colors.white54,fontWeight: FontWeight.w600,fontSize: 14),),),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: height/18,
                //     width: width,
                //     decoration: BoxDecoration(
                //       color: AppColors.t2,
                //       borderRadius: BorderRadiusDirectional.circular(8)
                //     ),child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
