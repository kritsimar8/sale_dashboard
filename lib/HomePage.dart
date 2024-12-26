import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neon_dashboard/components/Column1/Column1.dart';
import 'package:neon_dashboard/components/Column2/column2.dart';
import 'package:neon_dashboard/components/Column3/column3.dart';
import 'package:neon_dashboard/model/AvatarModel.dart';
import 'package:neon_dashboard/model/BarModel.dart';
import 'package:neon_dashboard/model/fastLine.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;
  late SelectionBehavior _selectionBehavior;
  Person? person;
  @override
  void initState() {
    super.initState();
    _selectionBehavior = SelectionBehavior(
      enable: true,
      selectedColor: Color.fromARGB(255, 179, 213, 76),
      unselectedColor: Color.fromARGB(255, 48, 48, 48),
    );
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3500),
      vsync: this,
      );
      _animation = Tween<double>(begin: 0.0,end:1.0).animate(
        CurvedAnimation(parent: _controller,
         curve: Curves.decelerate)
      );

      Future.delayed(Duration(milliseconds: 0),(){
        _controller.forward();
      });
      Future.delayed(Duration(milliseconds: 500),(){
        _controller.forward();
      });
      Future.delayed(Duration(milliseconds: 1000),(){
        _controller.forward();
      });
  }

  @override 
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // print(person!.people);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 48, 48, 48),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _animation,
                builder: (context,child){
                  return Opacity(
                    opacity: _animation.value,
                    child: Column1(width: width)
                  );
                },
                ),
              SizedBox(
                width: 10,
              ),
               AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _animation.value,
                    child: Column2(width: width));
                },
               ),
                  
                
                
              SizedBox(
                width: 10,
              ),
              AnimatedBuilder(
                animation: _animation,
                builder:(context, child) {
                  return Opacity(
                    opacity: _animation.value,
                     child: Column3(width: width, selectionBehavior: _selectionBehavior)
                    );
                },
               ),
            ],
          ),
        ));
  }
}
