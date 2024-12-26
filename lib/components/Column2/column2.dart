
import 'package:flutter/material.dart';
import 'package:neon_dashboard/components/Column1/box1.dart';
import 'package:neon_dashboard/components/Column1/box2.dart';
import 'package:neon_dashboard/components/Column1/box3.dart';
import 'package:neon_dashboard/components/Column2/box1.dart';
import 'package:neon_dashboard/components/Column2/box2.dart';
import 'package:neon_dashboard/components/Column2/box3.dart';
import 'package:neon_dashboard/model/fastLine.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Column2 extends StatelessWidget {
  const Column2({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Box1C2(width: width),
      const  SizedBox(
          height: 10,
        ),
        Box2C2(width: width),
       const SizedBox(
          height: 10,
        ),
        Box3C2(width: width),
      ],
    );
  }
}
