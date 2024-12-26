
import 'package:flutter/material.dart';
import 'package:neon_dashboard/model/AvatarModel.dart';

class Box1 extends StatelessWidget {
  const Box1({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(top: 20,left: 20,right: 0),
      height: 100,
      width: width / 3.5,
      decoration: BoxDecoration(
         color: Color.fromARGB(255, 28, 29, 31),
         borderRadius: BorderRadius.circular(20)
      ),
     
      child: Column(
        children: [
         const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Users',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(214, 255, 255, 255)),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    Color.fromARGB(255, 179, 213, 76),
                child: Icon(Icons.arrow_outward),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    final person = people[index];
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(30)),
                        color: Color.fromARGB(255, 42, 42, 42),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.pink,
                            child: Image.network(person.imageUrl),
                          ),
                          SizedBox(height: 15,),
                          Text(person.name,
                          style:const TextStyle(
                            color: Colors.white
                          )),
                          Text(person.caption,
                          style:const  TextStyle(
                            color: Colors.grey,
                            fontSize: 10
                          ),),
                        ],
                      ),
                    );
                  },
                )),
          )
        ],
      ),
    ));
  }
}
