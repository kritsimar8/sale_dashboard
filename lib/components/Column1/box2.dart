
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box2 extends StatefulWidget {
  const Box2({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Box2> createState() => _Box2State();
}

class _Box2State extends State<Box2> with TickerProviderStateMixin{
  late AnimationController _controller;
  late AnimationController _controller2;
  late Animation<double> _animation;
  late Animation<double> _animation2;
  late Animation<int> _animation3;
 


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 1500),
    );
    _controller2 = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(begin: 1,end: 0.0).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.bounceOut)
    );
    _animation2 = Tween<double>(begin: 1,end: 0.0).animate(
      CurvedAnimation(parent: _controller2,
      curve: Curves.bounceOut)
    );
    _animation3 = IntTween(begin: 0,end: 23).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastOutSlowIn)
    );
  
  
    Future.delayed(const Duration(seconds: 3),(){
       _controller.forward();
    });
   
    Future.delayed(const Duration(milliseconds: 4500),(){
       _controller2.forward();
    });
   
  }

  @override
  void dispose() {
    
    super.dispose();
    _controller.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: widget.width / 3.5,
      color: Color.fromARGB(0, 28, 29, 31),
      child: 
           Stack(
          children: [
            AnimatedBuilder(
              animation: _controller2,
              builder: (context, child) {
                return Transform.translate(
                offset: Offset(0, -130*_animation2.value),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.only(left: 30,right: 30,bottom: 10),
                    height: 190,
                    width: widget.width / 3.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 61, 60, 60),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("#21",
                                  style: GoogleFonts.rozhaOne(
                                    fontSize: 50,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                  ),),
                                   const Text("Transaction Notes",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(118, 255, 255, 255),
                              ),)
                              ],
                            ),
                              Text("Friday 5 July 2024",
                          style: TextStyle(
                            color: Color.fromARGB(134, 255, 255, 255),
                            fontSize: 13
                          ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
              },
           
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return  Transform.translate(
                offset: Offset(0, -60*_animation.value),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(left: 30,bottom: 10,right: 30),
                    height: 220,
                    width: widget.width / 3.5,
                    decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 179, 213, 76),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("#22",
                                  style: GoogleFonts.rozhaOne(
                                    fontSize: 50,
                                    color: Colors.black,
                                  ),),
                                    Text("Transaction Notes",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),)
                              ],
                            ),
                              Text("Wednesday 10 July 2024",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 13
                          ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
              },
             
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return  Container(
                padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 10),
                height: 220,
                width: widget.width / 3.5,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 28, 29, 31),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 1, right: 5),
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(20)),
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
                                'Completed',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 50,),
                     const   Expanded(
                          child: Text(
                            "I have been using your platform for 5 years and i love it. Here is my advance payment for my next year subscription",
                            style: TextStyle(
                              color: Color.fromARGB(164, 158, 158, 158),
                              fontSize: 13,
                            ),
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("#"+_animation3.value.toString(),
                            style: GoogleFonts.rozhaOne(
                              fontSize: 50,
                              color: Colors.white,
                            ),),
                             const Text("Transaction Notes",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),)
                          ],
                        ),
                      const  Text("Thursday 25 July 2024",
                        style: TextStyle(
                          color: const Color.fromARGB(164, 158, 158, 158),
                          fontSize: 13
                        ),)
                      
                      ],
                    )
                  ],
                ),
              );
              },
              
            ),
          ],
        ),
        
       
      
    );
  }
}
