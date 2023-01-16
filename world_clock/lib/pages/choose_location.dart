// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, deprecated_member_use

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  
  int count = 0;

  void getData () async {
    String name = await Future.delayed(Duration(seconds:2), (){ // await can be stored in a variable
      return 'noName';
    }
    );
    String realName = await Future.delayed(Duration(seconds: 1), () {
      return 'yarasheda';
    },
    );

    print('$name - $realName');
    
    }
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Choose Location',
          style: TextStyle(
            fontSize: 20,
          ),),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: FlatButton (
          child: Text(
            'count is $count',
            style: TextStyle(
              fontSize: 18,
            ),),
          onPressed: () => setState(() {
            count+=1;
          },
          ) ,
          
          ),
      ),
    );
  }
}