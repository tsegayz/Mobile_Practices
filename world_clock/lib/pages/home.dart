import 'package:flutter/material.dart';
// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column( 
            children: [
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context , '/location');
                },
                icon: const Icon(Icons.edit_location), 
                label: const Text('change location'),)
            ],
          )),
      );
  }
}

