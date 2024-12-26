
import 'package:flutter/material.dart';

class TagContainer extends StatelessWidget {
  final  String tagName;
  final String tagNo;
  final Color color;
  final double? width;
  const TagContainer( {
    super.key,
    required this.tagName,
    required this.tagNo,
    required this.color,
    this.width,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      height: 32,
      width: width ?? 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tagName,
            style: const TextStyle(
                color: Colors.white, fontSize: 10),
          ),
          Container(
            height: 20,
            width: 30,
            decoration: BoxDecoration(
                color:const Color.fromARGB(
                    255, 179, 213, 76),
                borderRadius:
                    BorderRadius.circular(20)),
            child:  Center(
              child: Text(
                tagNo,
                style:const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
