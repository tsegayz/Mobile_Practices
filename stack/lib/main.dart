// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Moder(),
  ) );
}
class name extends StatefulWidget {
  const name({ Key? key }) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
class Moder extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Stack'n"),
      ),
      body:
      Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[300],        
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/pina.jpg"),
                    radius: 68,
                  ),
                ),
                Positioned(
                  top: 110,
                  right: 15,
                  child: Text(
                    "Piniata",
                    style: TextStyle(
                      backgroundColor: Color.fromARGB(255, 160, 171, 171),
                      fontSize: 16,
                    ),
                  ),
                ),
              ]
            ),
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children :  [
              Stack(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/zendaya.jpg"),
                      fit: BoxFit.fill,
                    )      
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                  child: Row( 
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("carrier",
                      style: TextStyle( color: Colors.white, fontSize: 13),),
                      SizedBox(width: 8,),
                      Icon(Icons.wifi, color: Colors.white,size: 15,),
                      SizedBox(width: 60,),
                      Text("5:39 PM",
                      style: TextStyle(color: Colors.white),),
                      SizedBox(width: 90),
                      Icon(Icons.battery_full, color: Colors.white,size: 20,)
                    ],
                  ),
                ),
                
                Positioned(
                  top: 25,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(13, 9, 20, 0),
                    child: Row( 
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon( Icons.arrow_back, color: Colors.white, size: 23,),
                        SizedBox( width: 200,),
                        Icon(Icons.edit, color: Colors.white, size: 20,),
                        SizedBox( width: 10,),
                        Icon(Icons.call, color: Colors.white, size: 20,)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  right: 100,
                  child: Text(
                    "Zendaya.st",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 15, 10, 10),
                      fontWeight: FontWeight.bold,
                    ),))
              ]
            ),
            ],
          ),
        ],
      ),
    );
  }
}