// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp( 
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         title: Text("Strawberry pavlov"),
        ),
        body:
          Center(
            child: Container(
              width: 380,
              height: 300,
              decoration: BoxDecoration (
                border: Border.all(color: Colors.red)
              ),
              child: Row ( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [
                          Container(
                            width: 132,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              color: Color.fromARGB(255, 252, 218, 230)),
                            child:  SizedBox(
                              child: Text(
                                "Strawberry pavlov",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],),
                        Row (children: [
                          Container(
                            width: 132,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              color: Color.fromARGB(255, 252, 218, 230)),
                            child:  SizedBox(
                              child: Text(
                                "simply dummy text of the printing and typesetting ind of type and scrambled it to make a type ",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                          children: [
                          Container(
                            width: 132,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              color: Color.fromARGB(255, 252, 218, 230)),
                            child:  SizedBox(
                              child: Row( 
                                children: [
                                  Icon(Icons.star, size: 9.0,),
                                  Icon(Icons.star, size: 9.0,),
                                  Icon(Icons.star, size: 9.0,),
                                  Icon(Icons.star, size: 9.0,),
                                  Icon(Icons.star, size: 9.0,),

                                  SizedBox(width: 8.0,),

                                  Text(
                                    "13534 previews",
                                    style: TextStyle(
                                      fontSize: 10
                                    ),
                                  ),                                  
                                ],
                              ),
                            ),
                          ),
                        ],
                        ),
                          Container(
                            width: 132,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              color: Color.fromARGB(255, 252, 218, 230)),
                            child: SizedBox( 
                              child: Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column( mainAxisAlignment: MainAxisAlignment.spaceAround, 
                                    children: [
                                    Row(children: [
                                      Icon(Icons.beach_access, size: 13,)
                                    ],),
                                    Row(children: [
                                      Text("prep" , style: TextStyle( fontSize: 11),)
                                    ],),
                                    SizedBox(height: 5,),
                                    Row(children: [
                                      Text("12 min", style: TextStyle( fontSize: 11),)
                                    ],)
                                  ],),
                                  Column( mainAxisAlignment: MainAxisAlignment.spaceAround, 
                                    children: [
                                    Row(children: [
                                      Icon(Icons.lock_clock, size: 13,)
                                    ],),
                                    Row(children: [
                                      Text("cook" , style: TextStyle( fontSize: 11),)
                                    ],),
                                    SizedBox(height: 5,),
                                    Row(children: [
                                      Text("i hr ", style: TextStyle( fontSize: 11),)
                                    ],)
                                  ],),
                                  Column( mainAxisAlignment: MainAxisAlignment.spaceAround, 
                                    children: [
                                    Row(children: [
                                      Icon(Icons.food_bank, size: 13,)
                                    ],),
                                    Row(children: [
                                      Text("Feeds" , style: TextStyle( fontSize: 11),)
                                    ],),
                                    SizedBox(height: 5,),
                                    Row(children: [
                                      Text(" 4 - 6", style: TextStyle( fontSize: 11),)
                                    ],)
                                  ],),

                                ],

                              ),
                               
                            ),
                          ),             
                      ],
                    ),
                  ),
                  Column(
                    children: [
                        Container(
                          width: 230,
                          height: 297.5,
                          child: Image.asset("assets/lazagna.jpg",
                          fit: BoxFit.fill,),
                        )
                      ],
                    ),
                  
                ],
              ),
            )
          ),
        
      ),
    )
  );
}