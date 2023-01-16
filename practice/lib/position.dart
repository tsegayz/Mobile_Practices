// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Position extends StatefulWidget {
  const Position({ Key? key }) : super(key: key);

  @override
  State<Position> createState() => _PositionState();
}

class _PositionState extends State<Position> {
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
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                color: Colors.green,
                                height: 200,
                                width: 100,
                              )
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