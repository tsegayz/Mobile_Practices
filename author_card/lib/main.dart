// ignore_for_file: prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, deprecated_member_use, sized_box_for_whitespace, must_be_immutable, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp( MaterialApp (
    home: AuthorCard(),
  )
  );
}

class AuthorCard extends StatefulWidget {

  @override
  State<AuthorCard> createState() => _AuthorCardState();

  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ); 
  
  static ThemeData light() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      textTheme: lightTextTheme,
    );
  }

}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Color.fromARGB(255, 101, 32, 56),
        textTheme: AuthorCard.lightTextTheme,
        title: Text(
          'Author Card',
          style: TextStyle(
            fontSize: 26,
          ),),
        centerTitle: true,
      ),
      body: Card (
        child: Center(
          child: Container(
            color: Colors.grey[200],
            width: 300,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column( 
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children:[
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/pavlov.jpg", ),
                          ),
                          SizedBox( width: 8,),
                          Column( crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Mike Katz",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Smoothie Connoisseur",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
                        iconSize: 30,
                        color: Colors.red[600],
                        onPressed: () {
                          setState(() {
                            _isFavorited = !_isFavorited;
                            }
                          );
                        },
                      ),
                    ],
                  ),
                  Container(
                    width: 260,
                    height: 300,
                    child: Expanded(
                      child: Stack(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Positioned(
                            top: 120,
                            child: Image.asset(
                              "assets/pavlov.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),      
                          Positioned(
                             top: 260,
                             right: 20,
                             child: Text(
                              "Recipe",
                              style: TextStyle(
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                                color:Colors.black
                              ), 
                             ),
                           ),
                          Positioned(
                            top: 160,
                            child: RotatedBox(
                              quarterTurns: 75,
                              child: Text(
                                "Pavlova",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color:Color.fromARGB(255, 199, 103, 84),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
