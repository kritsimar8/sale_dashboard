
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_dashboard/model/BarModel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Box3 extends StatefulWidget {
  const Box3({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Box3> createState() => _Box3State();
}

class _Box3State extends State<Box3> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
     _controller = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 1500),
    );
     _animation = IntTween(begin: 0,end: 400).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastOutSlowIn)
    );
    _controller.forward();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

    bool month = true;
  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: Container(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      height: 100,
      width: widget.width / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
         color: Color.fromARGB(255, 28, 29, 31),
      ),
     
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 35,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 69, 70, 74),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Positioned(
                    right: month==false? 0:null,
                    left: month==true?0:null,
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 7),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              month = true;
                            });
                            
                          },
                          child: const Text(
                            "Monthly",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              month = false;
                            });
                           
                          },
                          child: Text(
                            "Weekly",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const  Text(
                      'Total Income',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '\$${_animation.value}',
                      style:  GoogleFonts.rozhaOne(
                          color: Color.fromARGB(206, 255, 255, 255),
                          fontSize: 40,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 170,
                  width: 350,
                  child: SfCartesianChart(
                    primaryXAxis:const CategoryAxis(
                      isVisible: true,
                      majorGridLines: MajorGridLines(width: 0),
                      majorTickLines: MajorTickLines(width: 0),
                      axisLine: AxisLine(width: 0),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    primaryYAxis: const NumericAxis(
                      isVisible: false,
                    ),
                    plotAreaBorderWidth: 0,
                    borderColor: const Color.fromARGB(0, 0, 0, 0),
                    margin: EdgeInsets.only(bottom: 0),
                    series: <CartesianSeries<ChartData, String>>[
                      ColumnSeries(
                          color: Color.fromARGB(255, 179, 213, 76),
                          borderRadius: BorderRadius.circular(10),
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) =>
                              data.x,
                          yValueMapper: (ChartData data, _) =>
                              data.y)
                    ],
                  ),
                )
              ],
            );
            },
             
          ),
        ],
      ),
    ));
  }
}
