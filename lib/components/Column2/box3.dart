
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box3C2 extends StatefulWidget {
  const Box3C2({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Box3C2> createState() => _Box3C2State();
}

class _Box3C2State extends State<Box3C2> with SingleTickerProviderStateMixin{
   late AnimationController _controller;
  late Animation<int> _animation;
  late Animation<int> _animation2;
  late Animation<int> _animation3;
  @override
  void initState() {
    super.initState();
      _controller = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 2500),
    );
     _animation = IntTween(begin: 0,end: 283).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastOutSlowIn)
    );
     _animation2 = IntTween(begin: 0,end: 42832).animate(
      CurvedAnimation(parent: _controller,
      curve: Curves.fastOutSlowIn)
    );
     _animation3= IntTween(begin: 0,end: 69).animate(
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
        flex: 1,
        child: Container(
          padding:const EdgeInsets.only(left: 0, right: 8, top: 10),
          height: 100,
          width: widget.width / 3.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:const Color.fromARGB(255, 28, 29, 31),
          ),
          child:  Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Statistics Overview",
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor:
                        Color.fromARGB(255, 179, 213, 76),
                    child: Icon(Icons.arrow_outward),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                color: Colors.grey,
                thickness: .5,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Users",
                            style: TextStyle(
                                color: Color.fromARGB(
                                    108, 255, 255, 255)),
                          ),
                          Text(
                            _animation.value.toString(),
                            style: GoogleFonts.rozhaOne(
                                color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pageviews",
                            style: TextStyle(
                                color: Color.fromARGB(
                                    96, 255, 255, 255)),
                          ),
                          Text(
                            _animation2.value.toString()+"k",
                            style: GoogleFonts.rozhaOne(
                                color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bounce rate",
                            style: TextStyle(
                                color: Color.fromARGB(
                                    80, 255, 255, 255)),
                          ),
                          Text(
                            _animation3.value.toString()+"%",
                            style: GoogleFonts.rozhaOne(
                                color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ],
                  );
                  },
                  
                ),
              )
            ],
          ),
        ));
  }
}
