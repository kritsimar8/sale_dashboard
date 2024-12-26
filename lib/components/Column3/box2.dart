
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:neon_dashboard/model/BarModel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Box2C3 extends StatefulWidget {
  const Box2C3({
    super.key,
    required this.width,
    required SelectionBehavior selectionBehavior,
  }) : _selectionBehavior = selectionBehavior;

  final double width;
  final SelectionBehavior _selectionBehavior;

  @override
  State<Box2C3> createState() => _Box2C3State();
}

class _Box2C3State extends State<Box2C3> with SingleTickerProviderStateMixin{
     late AnimationController _controller;
  late Animation<int> _animation;

  final numberFormat = NumberFormat("#,###");


   @override
  void initState() {
    
    super.initState();
      _controller = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 2500),
    );
     _animation = IntTween(begin: 0,end: 268).animate(
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
        child: Container(
      padding:const EdgeInsets.all(20),
      height: 100,
      width: widget.width / 3.5,
      decoration: BoxDecoration(
        color:const Color.fromARGB(255, 28, 29, 31),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Net spending",
            style: GoogleFonts.dmSerifDisplay(color: Colors.white, fontSize: 32),
          ),
          const Text(
            "Jan 5,2024 - Apr 12,2024",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          // SizedBox(height: 20,),
          SizedBox(
            height: 250,
            width: 500,
            child: SfCartesianChart(
              primaryXAxis:const CategoryAxis(
                isVisible: false,
              ),
              primaryYAxis:const NumericAxis(
                isVisible: false,
              ),
              plotAreaBorderWidth: 0,
              series: <CartesianSeries<ChartData, String>>[
                ColumnSeries<ChartData, String>(
                  selectionBehavior: widget._selectionBehavior,
                  dataSource: chartData2,
                  width: 0.3,
                  borderRadius: BorderRadius.circular(20),
                  color:const Color.fromARGB(255, 48, 48, 48),
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                )
              ],
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return  Row(
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  "\$${_animation.value.toString()}k",
                  style:
                      GoogleFonts.stardosStencil(color: Colors.white, fontSize: 50),
                ),
                Text(
                  "of \$ 15m",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            );
            },
           
          )
        ],
      ),
    ));
  }
}
