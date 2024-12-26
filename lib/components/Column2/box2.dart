


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_dashboard/components/tagContainer.dart';

class Box2C2 extends StatefulWidget {
  const Box2C2({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Box2C2> createState() => _Box2C2State();
}

class _Box2C2State extends State<Box2C2> with SingleTickerProviderStateMixin{
    late AnimationController _controller;
  late Animation<int> _animation;
  @override
  void initState() {
    
    super.initState();
      _controller = AnimationController(
      vsync: this,
    duration: const Duration(milliseconds: 2500),
    );
     _animation = IntTween(begin: 0,end: 6345).animate(
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
          padding:const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:const Color.fromARGB(255, 28, 29, 31),
          ),
          height: 50,
          width: widget.width / 3.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  Text(
                "Tags Reach",
                style: TextStyle(
                    color: Color.fromARGB(157, 158, 158, 158),
                    fontSize: 12),
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return    Text(
                  _animation.value.toString(),
                  style:  GoogleFonts.rozhaOne(
                    color: Color.fromARGB(172, 255, 255, 255),
                    fontSize: 50,
                  ),
                );
                },
             
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(78, 44, 43, 43),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        "#",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  TagContainer(tagName: 'Income', tagNo: "321", color: Color.fromARGB(92, 158, 158, 158),),
                const  SizedBox(
                    width: 30,
                  ),
                  TagContainer(tagName: "Expense", tagNo:  "100", color:  Color.fromARGB(0, 158, 158, 158)),
                  // Container(
                  //   padding:const EdgeInsets.symmetric(horizontal: 7),
                  //   height: 32,
                  //   width: 90,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(0, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      const Text(
                  //         "Expense",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color:const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child:const Center(
                  //           child: Text(
                  //             "100",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                const  SizedBox(
                    width: 30,
                  ),
                  TagContainer(tagName: "Liability", tagNo: "780", color: Color.fromARGB(88, 158, 158, 158)),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 8),
                  //   height: 32,
                  //   width: 90,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(88, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      const Text(
                  //         "Liability",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color:const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child:const Center(
                  //           child: Text(
                  //             "780",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            const  SizedBox(
                height: 10,
              ),
             const Row(
                children: [
                 const SizedBox(
                    width: 5,
                  ),
                  TagContainer(tagName: "Wallet", tagNo:  "450", color: Color.fromARGB(0, 158, 158, 158)),
                  // Container(
                  //   padding:const EdgeInsets.symmetric(horizontal: 8),
                  //   height: 32,
                  //   width: 90,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(0, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      const Text(
                  //         "Wallet",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color:const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child:const Center(
                  //           child: Text(
                  //             "450",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                const  SizedBox(
                    width: 30,
                  ),
                  TagContainer(tagName: "Assets", tagNo: "1100", color: Color.fromARGB(0, 158, 158, 158),),
                  // Container(
                  //   padding:const EdgeInsets.symmetric(horizontal: 8),
                  //   height: 32,
                  //   width: 90,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(0, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      const Text(
                  //         "Assets",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color:const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child:const Center(
                  //           child: Text(
                  //             "1100",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                 const SizedBox(
                    width: 30,
                  ),
                  TagContainer(tagName: "Stocks", tagNo: "1800", color: Color.fromARGB(88, 158, 158, 158)),
                  // Container(
                  //   padding:const EdgeInsets.symmetric(horizontal: 8),
                  //   height: 32,
                  //   width: 90,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(88, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      const Text(
                  //         "Stocks",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color:const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child: const Center(
                  //           child: Text(
                  //             "1800",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            const  SizedBox(
                height: 10,
              ),
           const  Row(
                  children: [
                  const  SizedBox(
                      width: 5,
                    ),
                  const  TagContainer(tagName: "Bonds", tagNo: "390", color: Color.fromARGB(96, 158, 158, 158)),
                    // Container(
                    //   padding:
                    //     const  EdgeInsets.symmetric(horizontal: 8),
                    //   height: 32,
                    //   width: 90,
                    //   decoration: BoxDecoration(
                    //     color:const Color.fromARGB(96, 158, 158, 158),
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment:
                    //         MainAxisAlignment.spaceBetween,
                    //     children: [
                    //     const  Text(
                    //         "Bonds",
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 10),
                    //       ),
                    //       // SizedBox(width: 3,),
                    //       Container(
                    //         height: 20,
                    //         width: 30,
                    //         decoration: BoxDecoration(
                    //             color: const Color.fromARGB(
                    //                 255, 179, 213, 76),
                    //             borderRadius:
                    //                 BorderRadius.circular(20)),
                    //         child:const Center(
                    //           child: Text(
                    //             "390",
                    //             style: TextStyle(
                    //                 fontSize: 10,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                   const SizedBox(
                      width: 30,
                    ),
                    TagContainer(tagName: "Investments", tagNo: "1500", color: Color.fromARGB(0, 158, 158, 158),width: 120,),
                    // Container(
                    //   padding:
                    //      const EdgeInsets.symmetric(horizontal: 8),
                    //   height: 32,
                    //   width: 120,
                    //   decoration: BoxDecoration(
                    //     color:const Color.fromARGB(0, 158, 158, 158),
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment:
                    //         MainAxisAlignment.spaceBetween,
                    //     children: [
                    //      const Text(
                    //         "Investments",
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 10),
                    //       ),
                    //       // SizedBox(width: 3,),
                    //       Container(
                    //         height: 20,
                    //         width: 30,
                    //         decoration: BoxDecoration(
                    //             color:const Color.fromARGB(
                    //                 255, 179, 213, 76),
                    //             borderRadius:
                    //                 BorderRadius.circular(20)),
                    //         child: const Center(
                    //           child: Text(
                    //             "1500",
                    //             style: TextStyle(
                    //                 fontSize: 10,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  const  SizedBox(
                      width: 30,
                    ),
                    TagContainer(tagName: "Crypto", tagNo: "1300", color: Color.fromARGB(0, 158, 158, 158)),
                    // Container(
                    //   padding:
                    //      const EdgeInsets.symmetric(horizontal: 8),
                    //   height: 32,
                    //   width: 90,
                    //   decoration: BoxDecoration(
                    //     color:const Color.fromARGB(0, 158, 158, 158),
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment:
                    //         MainAxisAlignment.spaceBetween,
                    //     children: [
                    //     const  Text(
                    //         "Crypto",
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 10),
                    //       ),
                    //       // SizedBox(width: 3,),
                    //       Container(
                    //         height: 20,
                    //         width: 30,
                    //         decoration: BoxDecoration(
                    //             color:const Color.fromARGB(
                    //                 255, 179, 213, 76),
                    //             borderRadius:
                    //                 BorderRadius.circular(20)),
                    //         child: const Center(
                    //           child: Text(
                    //             "1300",
                    //             style: TextStyle(
                    //                 fontSize: 10,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              
             const SizedBox(
                height: 10,
              ),
             const Row(
                children: [
                 const SizedBox(
                    width: 5,
                  ),
                const  TagContainer(tagName: "Wealth", tagNo:  "980", color: Color.fromARGB(88, 158, 158, 158)),
                  // Container(
                  //   padding:const EdgeInsets.symmetric(horizontal: 8),
                  //   height: 32,
                  //   width: 90,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(88, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //     const  Text(
                  //         "Wealth",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color:const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child:const Center(
                  //           child: Text(
                  //             "980",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                const  SizedBox(
                    width: 30,
                  ),
                 const TagContainer(tagName: "Taxes", tagNo: "2200", color: Color.fromARGB(0, 158, 158, 158)),
                  // Container(
                  //   padding:const EdgeInsets.symmetric(horizontal: 8),
                  //   height: 32,
                  //   width: 90,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(0, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      const Text(
                  //         "Taxes",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color: const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child:const Center(
                  //           child: Text(
                  //             "2200",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                const  SizedBox(
                    width: 30,
                  ),
                  TagContainer(tagName: "Gold", tagNo: "620", color:  Color.fromARGB(88, 158, 158, 158)),
                  // Container(
                  //   padding:const EdgeInsets.symmetric(horizontal: 8),
                  //   height: 32,
                  //   width: 80,
                  //   decoration: BoxDecoration(
                  //     color:const Color.fromARGB(88, 158, 158, 158),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment:
                  //         MainAxisAlignment.spaceBetween,
                  //     children: [
                  //      const Text(
                  //         "Gold",
                  //         style: TextStyle(
                  //             color: Colors.white, fontSize: 10),
                  //       ),
                  //       // SizedBox(width: 3,),
                  //       Container(
                  //         height: 20,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             color:const Color.fromARGB(
                  //                 255, 179, 213, 76),
                  //             borderRadius:
                  //                 BorderRadius.circular(20)),
                  //         child:const Center(
                  //           child: Text(
                  //             "620",
                  //             style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            const  SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                     const   Color.fromARGB(255, 179, 213, 76),
                  ),
                  child:const Text(
                    "View all",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ));
  }
}
