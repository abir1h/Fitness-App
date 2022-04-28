import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
class edit_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) { final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){Navigator.pop(context);},),
      ),
      floatingActionButton: InkWell(

        onTap: (){
          Get.to(() =>  HomeScreen(), duration: const Duration(milliseconds: 500), //duration of transitions, default 1 sec
              transition: Transition.leftToRight );
        },
        child: Container(
          width:width/5,height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.t2,

          ),child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text('Save',style: TextStyle(
                color: Colors.white
            ),),
          ),
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Full Name",style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/18,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(8)
              ),child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: InputDecoration(

                    border: InputBorder.none,
                    hintText: "Enter Name",
                    hintStyle: TextStyle(color: Colors.white54,)
                  ),
                ),
              ),
              ),
            ),  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Email",style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/18,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(8)
              ),child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: InputDecoration(


                    border: InputBorder.none,

                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Colors.white54,)
                  ),
                ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Gender",style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/18,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(8)
              ),child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: InputDecoration(


                    border: InputBorder.none,

                    hintText: "Male/Female",
                    hintStyle: TextStyle(color: Colors.white54,)
                  ),
                ),
              ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Age",style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/18,
                width: width,
                decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(8)
                ),child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(


                      border: InputBorder.none,

                      hintText: "Enter Age",
                      hintStyle: TextStyle(color: Colors.white54,)
                  ),
                ),
              ),
              ),
            )

          ],
        ),
      ),
    ));
  }
}
