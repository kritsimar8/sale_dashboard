
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box1C3 extends StatefulWidget {
  const Box1C3({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Box1C3> createState() => _Box1C3State();
}

class _Box1C3State extends State<Box1C3> with SingleTickerProviderStateMixin{
   late AnimationController _controller;
  late Animation<int> _animation;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  late Animation<double> _animation4;
  late Animation<double> _animation5;
  @override
  void initState() {
    
    super.initState();
      _controller = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 2500),
    );
     _animation = IntTween(begin: 0,end: 55000).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastOutSlowIn)
    );
     _animation2 = Tween<double>(begin: 550,end: 150).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn)
    );
     _animation3 = Tween<double>(begin: 550,end: 250).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn)
    );
     _animation4 = Tween<double>(begin: 550,end: 350).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn)
    );
     _animation5 = Tween<double>(begin: 550,end: 320).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn)
    );
    Future.delayed(Duration(milliseconds: 1500),(){
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
    return Expanded(
        child: Container(
      padding:const EdgeInsets.only(left: 50),
      height: 100,
      width: widget.width / 3.5,
      decoration: BoxDecoration(
          color:const Color.fromARGB(255, 28, 29, 31),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Spend",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 17),
                      ),
                      Text(
                        "\$${_animation.value.toString()}",
                        style: GoogleFonts.rozhaOne(
                            fontSize: 40, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      Color.fromARGB(255, 179, 213, 76),
                  child: Icon(Icons.arrow_outward),
                )
              ],
            );
            },
            
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  Text(
                  "January 2024",
                  style:
                      TextStyle(color: Colors.white, fontSize: 13),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  height: 40,
                  width: _animation2.value,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 179, 213, 76),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "\$24,000",
                    style: GoogleFonts.stardosStencil(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              const  SizedBox(
                  height: 15,
                ),
              const Text(
                  "February 2024",
                  style:
                      TextStyle(color: Colors.white, fontSize: 13),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  height: 40,
                  width: _animation3.value,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 179, 213, 76),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "\$32,000",
                    style: GoogleFonts.stardosStencil(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              const  SizedBox(
                  height: 15,
                ),
              const  Text(
                  "March 2024",
                  style:
                      TextStyle(color: Colors.white, fontSize: 13),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  height: 40,
                  width: _animation4.value,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 179, 213, 76),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "\$48,000",
                    style: GoogleFonts.stardosStencil(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              const  SizedBox(
                  height: 15,
                ),
              const  Text(
                  "April 2024",
                  style:
                      TextStyle(color: Colors.white, fontSize: 13),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  height: 40,
                  width: _animation5.value,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 179, 213, 76),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "\$41,000",
                    style: GoogleFonts.stardosStencil(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                )
              ],
            );
            },
            
          )
        ],
      ),
    ));
  }
}
