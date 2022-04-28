import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
class neutrition_part extends StatefulWidget {
  @override
  _neutrition_partState createState() => _neutrition_partState();
}

class _neutrition_partState extends State<neutrition_part> {
  String? heart='Diabetics';
  String? health_type='Lose belly fat';
  String? alergy;

  @override
  Widget build(BuildContext context) {  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
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
          'Nutrition Chart',
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
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Enter your height",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            Row(
              children: [
                Expanded( 
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height/18,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Feet',                            border: InputBorder.none,

                              hintStyle: TextStyle(color:Colors.white54,
                            fontWeight: FontWeight.bold,fontSize: 20)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Enter your Weight",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height/18,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Kg',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color:Colors.white54,
                            fontWeight: FontWeight.bold,fontSize: 20)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Heart Issue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height/18,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  child: new DropdownButton<String>(
                    isExpanded: true, //Add
                    dropdownColor: AppColors.grey,
                    style: TextStyle(color: Colors.white54),
                    iconDisabledColor: AppColors.t2,//
                    iconEnabledColor:  AppColors.t2,// this property

                    hint: heart == null
                        ? Padding(
                      padding:
                      const EdgeInsets.all(8.0),
                      child: Text(
                          "Select Heart Issue ",
                          style: TextStyle(
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                    )
                        : Padding(
                      padding:
                      const EdgeInsets.all(8.0),
                      child: Text(heart!,
                          style: TextStyle(
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                    ),

                    items: <String>[
                      ' Diabetics',
                      ' Backspin',
                      ' Nuninsulin',
                      ' Obesity',
                      ' Osteoporosis',
                      ' Blood pressure',
                    ]
                        .map<
                        DropdownMenuItem<
                            String>>((value) =>
                    new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    ))
                        .toList(),

                    onChanged: (value) {
                      setState(() {
                        heart = value;
                      });
                    },
                    underline:
                    DropdownButtonHideUnderline(
                        child: Container()),
                  ),
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Allergic",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height/18,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  child: new DropdownButton<String>(
                    isExpanded: true, //Add
                    dropdownColor: AppColors.grey,
                    style: TextStyle(color: Colors.white54),
                    iconDisabledColor: AppColors.t2,//
                    iconEnabledColor:  AppColors.t2,// this property

                    hint: alergy == null
                        ? Padding(
                      padding:
                      const EdgeInsets.all(8.0),
                      child: Text(
                          "Select Yes/No",
                          style: TextStyle(
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                    )
                        : Padding(
                      padding:
                      const EdgeInsets.all(8.0),
                      child: Text(alergy!,
                          style: TextStyle(
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                    ),

                    items: <String>[
                      ' Yes',
                      ' No',

                    ]
                        .map<
                        DropdownMenuItem<
                            String>>((value) =>
                    new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    ))
                        .toList(),

                    onChanged: (value) {
                      setState(() {
                        alergy = value;
                      });
                    },
                    underline:
                    DropdownButtonHideUnderline(
                        child: Container()),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Type of health",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height/18,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  child: new DropdownButton<String>(
                    isExpanded: true, //Add
                    dropdownColor: AppColors.grey,
                    style: TextStyle(color: Colors.white54),
                    iconDisabledColor: AppColors.t2,//
                    iconEnabledColor:  AppColors.t2,// this property

                    hint: health_type == null
                        ? Padding(
                      padding:
                      const EdgeInsets.all(8.0),
                      child: Text(
                          "Select Yes/No",
                          style: TextStyle(
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                    )
                        : Padding(
                      padding:
                      const EdgeInsets.all(8.0),
                      child: Text(health_type!,
                          style: TextStyle(
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                    ),

                    items: <String>[
                      'Lose belly fat',
                      ' Weight lose',
                      ' ABS gaining',

                    ]
                        .map<
                        DropdownMenuItem<
                            String>>((value) =>
                    new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    ))
                        .toList(),

                    onChanged: (value) {
                      setState(() {
                        health_type = value;
                      });
                    },
                    underline:
                    DropdownButtonHideUnderline(
                        child: Container()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    ));
  }
}
