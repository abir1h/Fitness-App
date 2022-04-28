import 'package:fitness_app/screens/MainHome.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
class live_training extends StatefulWidget {
  @override
  _live_trainingState createState() => _live_trainingState();
}

class _live_trainingState extends State<live_training> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        title:Text('Live Training',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/images/g1.jpg'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/4.6,width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.light_accent
                ),
                child: Column(
                  children: [
                    Container(
                      height: height/6,
                      width: width,
                      decoration: BoxDecoration(
                          color: AppColors.button1,
                          image:DecorationImage(image: AssetImage('assets/images/g1.jpg'),fit: BoxFit.cover),

                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColors.light_accent,
                              child: Icon(Icons.play_arrow,color: Colors.white,size: 30,))
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('12:52 / 54:32',style: TextStyle(color: Colors.white),),
                        ),
                        Row(
                          children: [
                            Icon(Icons.volume_down,color: Colors.white,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.fullscreen,color: Colors.white,),
                            ),
                          ],
                        )
                      ],
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("PILATES TRAINING",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            Container(
height: height/1.6,
                child:ListView.builder(

                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (_,index){
                      return             Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height/8,
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.greylight,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height/10,
                                  width: width/5,
                                  decoration: BoxDecoration(
                                      color: AppColors.button1,

                                      image:DecorationImage(image: AssetImage('assets/images/g1.jpg'),fit: BoxFit.cover),

                                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: AppColors.light_accent,
                                            child: Icon(Icons.play_arrow,color: Colors.white,size: 15,))
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("Great the sun",style: TextStyle(
                                        color: Colors.white,fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),),
                                  ), Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Duis eleifend felis nec",style: TextStyle(
                                        color: Colors.white,fontSize: 12,
                                        fontWeight: FontWeight.normal
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.timelapse_outlined,color: AppColors.light_accent,),
                                        Text('   15 min',style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                      ;
                    })
            ),

          ],
        ),
      ),
    ));
  }
}
