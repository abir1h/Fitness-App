import 'package:fitness_app/utils/Custom_drawer.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class tr {
  static List code = ['assets/images/p21.jpg', 'assets/images/p22.jpg','assets/images/p23.jpg','assets/images/p24.jpg','assets/images/p25.jpg',];

  static String getColorItem() => (code.toList()..shuffle()).first;
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      key: _key,
      drawer: CustomDrawer(height: height, width: width),
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading:Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: InkWell(
            onTap: (){
              _key.currentState!.openDrawer();
            },
              child: Icon(Icons.sort,color: Colors.white,)),
        ),
        backgroundColor:AppColors.background,
        title:Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:height/25 ,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome , Mamun",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Coach",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Container(
                height: height/10,
                width: width,
                child:ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image:  AssetImage(tr.getColorItem()),fit: BoxFit.cover),
                          ),
                        )
                      );
                    })
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Recommended Trainings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 15,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height/5,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 ),
                        color: AppColors.accent

                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height/17,
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.button1,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Fitness Stretching",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Jan 19 ,8.30 Pm',style: TextStyle(color: Colors.white,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.button1,
                              borderRadius: BorderRadius.circular(7),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.timelapse_outlined,color: Colors.white,),
                                  Text('   15 min',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: height/70,
                    left: width/2,
                    child : Container(
                      height: height/6,
                      width: width/3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(image: AssetImage('assets/images/g1.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 25,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height/5,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 ),
                        color: AppColors.accent

                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height/17,
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.button2,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Fitness Stretching",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Jan 19 ,8.30 Pm',style: TextStyle(color: Colors.white,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.button2,
                              borderRadius: BorderRadius.circular(7),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.timelapse_outlined,color: Colors.white,),
                                  Text('   15 min',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: height/70,
                    left: width/2,
                    child : Container(
                      height: height/6,
                      width: width/3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(image: AssetImage('assets/images/g1.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      )

    ));
  }
}
