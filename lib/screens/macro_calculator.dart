import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
class macro_calculator extends StatefulWidget {
  @override
  _macro_calculatorState createState() => _macro_calculatorState();
}

class _macro_calculatorState extends State<macro_calculator> {
  bool result=false;

  @override
  Widget build(BuildContext context) { final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  List select_array=[];
List Acticity=[{"select:":1,'title':'Sedentary'},{"select:":0,'title':'Light Activity'},{"select:":0,'title':'Moderate'},];
List primary=[{"select:":1,'title':'Loose Weight by 10 %'},{"select:":0,'title':'Maintain Weight'},];
List meals=[{"select:":1,'title':'3',},{"select:":0,'title':'4'},{"select:":0,'title':'5'},];
  return SafeArea(child: Scaffold(
    backgroundColor:
    AppColors.background,
    appBar: AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColors.background,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      title: Text(
        'Macro Calculator',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/t1.jpeg'),
          ),
        ),
      ],
    ),
body: SingleChildScrollView(
  child: result==false?Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Gender',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Container(
                    height: height/18,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Male',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color:Colors.white54,
                                fontWeight: FontWeight.bold,fontSize: 20)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Age years',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Container(
                    height: height/18,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Years',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color:Colors.white54,
                                fontWeight: FontWeight.bold,fontSize: 20)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),      SizedBox(height: 25,),
      Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Enter Your Height',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Container(
                    height: height/18,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Feet',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color:Colors.white54,
                                fontWeight: FontWeight.bold,fontSize: 20)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Age years',style: TextStyle(color: Colors.transparent,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Container(
                    height: height/18,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Inches',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color:Colors.white54,
                                fontWeight: FontWeight.bold,fontSize: 20)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Activity Level',style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w700
        ),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: height/18,
          width: width,
          child: ListView.builder(
              shrinkWrap: true,scrollDirection: Axis.horizontal,
              itemCount: Acticity.length,
              itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  // print(Acticity.toString());
                  //   setState(() {
                  //   Acticity[index]['select']=1;
                  // });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color:  Acticity[index]['select']==1?AppColors.t2:Colors.transparent,
                    border: Border.all(color: Acticity[index]['select']==1?AppColors.t2:AppColors.grey,),
                    borderRadius: BorderRadius.circular(8)
                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text(Acticity[index]['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                  ),
                ),
              ),
            );
          }),
        ),
      ), Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Primary Goal',style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w700
        ),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: height/18,
          width: width,
          child: ListView.builder(
              shrinkWrap: true,scrollDirection: Axis.horizontal,
              itemCount: primary.length,
              itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  print(Acticity.toString());
                    setState(() {
                      primary[index]['select']=1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color:  AppColors.grey,
                    border: Border.all(color: primary[index]['select']==1?AppColors.t2:AppColors.grey,),
                    borderRadius: BorderRadius.circular(8)
                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text(primary

                    [index]['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Meals per day',style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w700
        ),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: height/10,
          width: width,
          child: ListView.builder(
              shrinkWrap: true,scrollDirection: Axis.horizontal,
              itemCount: meals.length,
              itemBuilder: (_,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: height/7,width: width/4,
                      decoration: BoxDecoration(
                          color:  AppColors.grey,
                          border: Border.all(color: meals[index]['select']==1?AppColors.t2:AppColors.grey,),
                          borderRadius: BorderRadius.circular(8)
                      ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Column(
                        children: [
                          Text(meals

                          [index]['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),), Text("Times",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                        ],
                      )),
                    ),
                    ),
                  ),
                );
              }),
        ),
      ),
      SizedBox(height: 20,),
      Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: (){
            print('tapped');
            setState(() {
              result=true;
            });
          },
          child: Container(
            height: height/25,
            width:width/4,
            decoration: BoxDecoration(
              color: AppColors.t2,
              borderRadius: BorderRadius.circular(8),

            ),child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
          ),
        ),
      )

    ],
  ):Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: height/6,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.grey3,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("based on your needs and goal, you should eat this many calories per day",style: TextStyle(
                  color:Colors.white54
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Calories",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 14),),
                        Text("-8870",style: TextStyle(color: AppColors.t2,fontWeight: FontWeight.bold,fontSize: 14),),
                        Text("Calculated Per Day",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 10),),


                      ],
                    ),
                    Icon(Icons.pie_chart,color: AppColors.t2,size: 60,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text('Macronutrient distribution',style: TextStyle(
          color: Colors.white,fontSize: 18
        ),),
      ),
      Center(
        child: PieChartSample2(),
      ),
      SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: height/9,width: width/4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.c1,width: .25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.fastfood_outlined,color: AppColors.c3,),
                          ),
                          Text('-1774 kcal',style: TextStyle(
                            color: Colors.white54,

                          ),), Text('-443g',style: TextStyle(
                            color: Colors.white54,

                          ),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Protein",style: TextStyle(color: AppColors.c2,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: height/9,width: width/4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.c2,width: .25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.fastfood_outlined,color: AppColors.c3,),
                          ),
                          Text('-1774 kcal',style: TextStyle(
                            color: Colors.white54,

                          ),), Text('-443g',style: TextStyle(
                            color: Colors.white54,

                          ),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Fat",style: TextStyle(color: AppColors.c2,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: height/9,width: width/4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.c3,width: .25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.fastfood_outlined,color: AppColors.c3,),
                          ),
                          Text('-1774 kcal',style: TextStyle(
                            color: Colors.white54,

                          ),), Text('-443g',style: TextStyle(
                            color: Colors.white54,

                          ),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Carbs",style: TextStyle(color: AppColors.c3,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: height/8,
          width: width,
          decoration: BoxDecoration(
              color: AppColors.grey3,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("meal distribution",style: TextStyle(
                    color:Colors.white54
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Protein",style: TextStyle(color: AppColors.c1,fontWeight: FontWeight.bold,),),
                          Text("-147 g",style: TextStyle(color: AppColors.c1,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Fat",style: TextStyle(color: AppColors.c2,fontWeight: FontWeight.bold),),
                          Text("98 g",style: TextStyle(color: AppColors.c2,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Carbs",style: TextStyle(color: AppColors.c3,fontWeight: FontWeight.bold),),
                          Text("-98 g",style: TextStyle(color: AppColors.c3,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            

            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: height/18,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.grey3,

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.self_improvement_sharp,color: AppColors.t2,size: 40,),
                Text("basal metabolic rate ( BMR )",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600),),
                Text("-8125 KCAl",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: height/18,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.grey3,

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.self_improvement_sharp,color: AppColors.t2,size: 40,),
                Text("basal metabolic rate ( BMR )",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600),),
                Text("-8125 KCAl",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: height/18,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.grey3,

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.self_improvement_sharp,color: AppColors.t2,size: 40,),
                Text("basal metabolic rate ( BMR )",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600),),
                Text("-8125 KCAl",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: (){
            setState(() {
              result=false;
            });
          },
          child: Container(
            height: height/25,
            width:width/4,
            decoration: BoxDecoration(
              border:Border.all(color:AppColors.t2) ,
              borderRadius: BorderRadius.circular(8),

            ),child: Center(child: Text("Recalculate",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
          ),
        ),
      ),
SizedBox(height: height/25,)
    ],
  ),
),
  ));
  }
}


class PieChartSample2 extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<PieChartSample2> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Card(
        elevation: 0,
        color:Colors.transparent,
        child: AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  setState(
                        () {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex =
                          pieTouchResponse.touchedSection!.touchedSectionIndex;
                    },
                  );
                },
              ),
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              centerSpaceRadius: 60,
              sections: showingSections(),
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 18.0 : 14.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.green,
            value: 50,
            title: '50%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );

        case 1:
          return PieChartSectionData(
            color: Colors.orangeAccent,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );

        case 2:
          return PieChartSectionData(
            color: AppColors.material,
            value: 20,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}