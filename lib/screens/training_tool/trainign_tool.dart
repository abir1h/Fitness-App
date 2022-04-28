import 'package:fitness_app/utils/Custom_drawer.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fitness_app/utils/colors.dart';

class trainign_tool extends StatefulWidget {
  @override
  _trainign_toolState createState() => _trainign_toolState();
}

class _trainign_toolState extends State<trainign_tool> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.background,

      drawer: CustomDrawer(height: height, width: width),
      appBar: AppBar(
        elevation: 0,
        leading:Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: InkWell(
              onTap: (){
                _key.currentState!.openDrawer();
              },
              child: Icon(Icons.sort,color: Colors.white,)),
        ),
        backgroundColor:AppColors.background,
        title:Text('Workout',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        centerTitle: true,
        actions: [
          SvgPicture.asset("assets/images/chat.svg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.material)
              ),child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:height/3,
              width:width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                  'assets/images/t1.jpeg'
                ),fit: BoxFit.cover)
              ),
            )
          ],
        ),
      ),

    ));
  }
}
