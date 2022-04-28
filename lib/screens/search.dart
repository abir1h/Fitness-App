import 'package:fitness_app/screens/seach_section/search_details.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

import 'chat_screen.dart';
import 'message_screen.dart';
class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  List search_result=[
    {'name':"Hilary Ouse",'follow':1 },
    {'name':"Hilary Ouse",'follow':0 },
    {'name':"Hilary Ouse",'follow':1 },
    {'name':"Hilary Ouse",'follow':0},
    {'name':"Hilary Ouse",'follow':1 },
  ];
  @override
  Widget build(BuildContext context) {var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: Colors.white,),)
        ,title: Text('Choose trainer',style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700 ),),
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
      backgroundColor:AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height/18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.grey
                  ),child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color:Colors.white),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white)
                  ),
                ),
                )
            ),
            ListView.builder(
                itemCount: search_result.length,
                shrinkWrap: true,
                itemBuilder: (_,index){return
                  Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => details_search(), duration: Duration(milliseconds: 500), //duration of transitions, default 1 sec
                      transition: Transition.leftToRight );
                },
                child: Container(
                  height: height/10,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage('assets/images/t1.jpeg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(search_result[index]['name'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                                  Text('About Trainer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12),),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      search_result[index]['follow']==1?  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: (){Get.to(()=>ChatScreen(chatName: 'Silva Roy'));},
                            child: SvgPicture.asset('assets/icons/chats.svg')),
                      ):Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(onTap: (){search_result[index]['follow']==0?setState((){
                          search_result[index]['follow']=1;
                        }):Get.to(()=>ChatScreen(chatName: 'Silva Roy'));},                        child: Container(
                            height: 30,width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: AppColors.material)
                            ),child: Icon(Icons.add,color:Colors.white),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            );}),
            Text(search_result.toString()),

          ]        ),
      ),
    ),
    );
  }
}
