
import 'package:flutter/material.dart';
import 'package:neon_dashboard/components/Column3/box1.dart';
import 'package:neon_dashboard/components/Column3/box2.dart';
import 'package:neon_dashboard/model/BarModel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Column3 extends StatelessWidget {
  const Column3({
    super.key,
    required this.width,
    required SelectionBehavior selectionBehavior,
  }) : _selectionBehavior = selectionBehavior;

  final double width;
  final SelectionBehavior _selectionBehavior;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Box1C3(width: width),
        // SizedBox(height: 20,),
        // Expanded(child: Container(
        //   height: 100,
        //   width: width/3.5,
        //   color: Color.fromARGB(255, 28, 29, 31),
        // )),
       const SizedBox(
          height: 20,
        ),
        Box2C3(width: width, selectionBehavior: _selectionBehavior),
      ],
    );
  }
}
