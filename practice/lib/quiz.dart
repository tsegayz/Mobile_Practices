// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({ Key? key }) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.green,
                                height: 200,
                                width: 100,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(18, 60, 15, 25),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Color.fromARGB(255, 255, 255, 255),                                
                              ),
                            ),
                             Padding(
                              padding: EdgeInsets.fromLTRB(20.5, 62.5, 17, 25),
                              child: CircleAvatar(
                                radius:37.5,
                                backgroundColor: Colors.green,                                
                              ),
                            ),                            
                            Padding(
                              padding: const EdgeInsets.fromLTRB(34, 8, 34, 0),
                              child: Container(
                                width: 50,
                                height: 25,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(36, 8, 38, 0),
                              child: Container(
                                width: 46,
                                height: 23,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 8, 38, 0),
                              child: Container(
                                width: 28,
                                height: 12,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(47, 8, 38, 0),
                              child: Container(
                                width: 24,
                                height: 10,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 100, 0, 0),
                              child: Container(
                                width: 100,
                                height: 2.5,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 183, 38, 0),
                              child: Container(
                                width: 50,
                                height: 25,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 185, 38, 0),
                              child: Container(
                                width: 44.5,
                                height: 23,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(43, 193, 38, 0),
                              child: Container(
                                width: 29,
                                height: 15,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(46, 195, 38, 0),
                              child: Container(
                                width: 23,
                                height: 13,
                                color: Colors.green,
                              ),
                            ),
                            
                          ]
                        );
                      },
                    ),
                  ),
                ),
              ),
          ),
          
        ],
      ),

      
    );
  }
}