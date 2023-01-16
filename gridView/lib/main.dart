// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, unused_import, prefer_final_fields, unused_field, duplicate_ignore, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'card.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: ScrollableImage(),
  ));
}

class ScrollableImage extends StatefulWidget {
  const ScrollableImage({ Key? key }) : super(key: key);
  
  @override
  State<ScrollableImage> createState() => _ScrollableImageState();
}

class _ScrollableImageState extends State<ScrollableImage> {

  int _index = 0;
  
  static List<CardModel> itemPack = [
    CardModel("Eiffel Tower", "Tourist attraction in paris", "assets/paris.jpg"),
    CardModel("Rio de janerio ", "Tourist attaraction in brasil", "assets/brasil.jpg"),
    CardModel("White House", "Tourist attaraction in DC", "assets/dc.jpg"),
    CardModel("Nam san tower", "Tourist attaraction in korea", "assets/korea.jpg"),
    CardModel("Colosseum", "Tourist attaraction in italy", "assets/italy.jpg"),
    CardModel("CologneGerman", "Tourist attaraction in german", "assets/german.jpg"),
  ];

  get_icons(int index) {
    return index % 2 == 0 ? Icons.star_border : Icons.star;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.grey[300],
        title: const Text(
          'Catchy Sites',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          childAspectRatio: 1,
          ), 
        itemCount: 15,
        itemBuilder: (BuildContext context, int index){
          return Stack(
            children: [
              Container(
	              decoration: BoxDecoration(
	              image: DecorationImage(
	                fit: BoxFit.cover,
	                image : AssetImage(itemPack[index % 6].images,)
                ),
	            ),
	            ),
              Container( 
                child: Column( mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container( color: Colors.grey[300],
                      child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            itemPack[index % 6].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _index++;
                                });
                              },
                              child: Icon(get_icons(_index), color: Colors.red))
                        ],
                      ),
                    ),
                    Container(color: Colors.grey[300],
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            itemPack[index % 6].description,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),   
                  ],
                ),
              )
            ],
          );
        },),
    );
  }
}