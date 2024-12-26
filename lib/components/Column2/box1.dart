
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_dashboard/model/fastLine.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Box1C2 extends StatefulWidget {
  const Box1C2({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Box1C2> createState() => _Box1C2State();
}

class _Box1C2State extends State<Box1C2> with SingleTickerProviderStateMixin{
   late AnimationController _controller;
  late Animation<int> _animation;
  @override
  void initState() {
    
    super.initState();
      _controller = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 2500),
    );
     _animation = IntTween(begin: 0,end: 24560).animate(
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
  
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          padding:const EdgeInsets.only(top: 30, left: 0, right: 0),
          height: 10,
          width: widget.width / 3.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:const Color.fromARGB(255, 28, 29, 31),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  padding:const EdgeInsets.only(left: 1, right: 5),
                  height: 35,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor:
                            Color.fromARGB(220, 0, 0, 0),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sales Overview',
                        style: TextStyle(
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 260,
                    width: widget.width / 3.5,
                    child: SfCartesianChart(
                      margin:const EdgeInsets.all(0),
                      primaryXAxis: const CategoryAxis(
                        labelPlacement: LabelPlacement.onTicks,
                        edgeLabelPlacement:
                            EdgeLabelPlacement.shift,
                        isVisible: false,
                      ),
                      primaryYAxis: const NumericAxis(
                        isVisible: false,
                        majorGridLines: MajorGridLines(width: 0),
                        majorTickLines: MajorTickLines(width: 0),
                      ),
                      plotAreaBorderWidth: 0,
                      series: <CartesianSeries>[
                        FastLineSeries<FastLineModel, int>(
                            color: Colors.grey,
                            dataSource: FastLinedata,
                            xValueMapper:
                                (FastLineModel data, _) => data.x,
                            yValueMapper:
                                (FastLineModel data, _) =>
                                    data.y),
                        AreaSeries<FastLineModel, int>(
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(64, 158, 158, 158),
                                Color.fromARGB(0, 158, 158, 158)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          dataSource: FastLinedata,
                          xValueMapper: (FastLineModel data, _) =>
                              data.x,
                          yValueMapper: (FastLineModel data, _) =>
                              data.y,
                        ),
                      ],
                    ),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Positioned(
                      bottom: 1,
                      left: 30,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$ ${_animation.value.toString()}',
                            style: GoogleFonts.rozhaOne(
                                fontSize: 50,
                                color:  Color.fromARGB(
                                    137, 255, 255, 255)),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        146, 158, 158, 158),
                                    borderRadius:
                                        BorderRadius.circular(30)),
                                child: const Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundColor:
                                          Color.fromARGB(
                                              255, 179, 213, 76),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "23.65%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.w100,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            const  SizedBox(
                                width: 10,
                              ),
                            const   Text(
                                "Per Month",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                    },
                     
                  )
                ],
              )
            ],
          ),
        ));
  }
}
