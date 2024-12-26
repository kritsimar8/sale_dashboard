
import 'package:flutter/material.dart';
import 'package:neon_dashboard/components/Column1/box1.dart';
import 'package:neon_dashboard/components/Column1/box2.dart';
import 'package:neon_dashboard/components/Column1/box3.dart';
import 'package:neon_dashboard/model/AvatarModel.dart';
import 'package:neon_dashboard/model/BarModel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Column1 extends StatelessWidget {
  const Column1({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Box1(width: width),
        SizedBox(
          height: 10,
        ),
        Box2(width: width),
        SizedBox(
          height: 10,
        ),
        Box3(width: width),
      ],
    );
  }
}
