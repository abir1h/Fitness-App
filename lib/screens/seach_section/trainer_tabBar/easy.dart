import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
class easy extends StatefulWidget {
  @override
  _easyState createState() => _easyState();
}

class _easyState extends State<easy> {
  @override
  Widget build(BuildContext context) {var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height,
              child: ListView.builder(itemBuilder: (_,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/7.8,width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(image: AssetImage('assets/images/rw.jpeg'),
                      fit: BoxFit.cover)
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [SizedBox(height: height/16.9,),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ABS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          height: height/35,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.black54
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Workout",style: TextStyle(color: Colors.white,),),
                                Icon(Icons.history,color: Colors.white,)
                              ],
                            ),
                          ),

                        )
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    ));
  }
}
