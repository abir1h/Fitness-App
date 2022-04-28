import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
class neutrition_chart extends StatefulWidget {
  @override
  _neutrition_chartState createState() => _neutrition_chartState();
}

class _neutrition_chartState extends State<neutrition_chart> {
  List<_SalesData> data = [
    _SalesData('Sat', 35),
    _SalesData('Sun', 28),
    _SalesData('Mon', 34),
    _SalesData('Tue', 32),
    _SalesData('Thu', 40)
  ];
  var _selectedValue;
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
            // Get.to(MainHome());
          },
          icon: Icon(Icons.arrow_back,color: Colors.transparent,),
        ),
        title:Text('Neutritionist Chart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/images/g1.jpg'),
          )
        ],
      ),

      body: SingleChildScrollView(
        child:Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DatePicker(
                DateTime.now(),height: 100,
                initialSelectedDate: DateTime.now(),
                selectionColor: AppColors.accent,
                activeDates: [
                  DateTime.now()
                ],
                selectedTextColor: Colors.white,dateTextStyle: TextStyle(color: Colors.white),
                dayTextStyle: TextStyle(color: Colors.white),
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 15.0,
                percent: 0.8,                animation: true,

                center: new Text("80%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                progressColor: AppColors.light_accent,
              ),
            ),
            SizedBox(height: height/35,),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Last 7 Days",style: TextStyle(color: Colors.white),),
              ),
            ),
            SfCartesianChart(
              backgroundColor: AppColors.accent,
                primaryXAxis: CategoryAxis(),
                // Chart title
                // Enable legend
                enableAxisAnimation: true,
                legend: Legend(isVisible: false),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[

                  StackedLineSeries<_SalesData, String>(
                      dataSource: data,

                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      name: 'Sales',
                      // Enable data label

                      dataLabelSettings: DataLabelSettings(isVisible: true,color: Colors.white))
                ]),
          ]
        )
      )
    ));
  }
}
