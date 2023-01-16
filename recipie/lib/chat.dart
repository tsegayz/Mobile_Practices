// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';


class Chat extends StatefulWidget {
   
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Message> messages = [
    Message(text: 'hey nana', date: DateTime.now().subtract(Duration(minutes: 1)), isSentByMe: false),
    Message(text: 'hey amy', date: DateTime.now().subtract(Duration(minutes: 2)), isSentByMe: true),
    Message(text: 'how u doing', date: DateTime.now().subtract(Duration(minutes: 3)), isSentByMe: false),
    Message(text: 'am fine', date: DateTime.now().subtract(Duration(minutes: 4)), isSentByMe: true),
  ].reversed.toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Color.fromARGB(255, 0, 16, 32), 
      appBar: AppBar(toolbarHeight: 70,
        title: Text("chat app"),
        backgroundColor: Color.fromARGB(255, 0, 16, 32), 
        elevation: 10.0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
            child: Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Color.fromARGB(255, 166, 178, 187),
                  size: 28,)
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container()
          ),
          Container(
            color:Colors.blue,
            child:TextField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'type sth'
              )
            )
          )
        ],
      )
    );
  }

}

class Message{

  final String text;
  final DateTime date;
  final bool isSentByMe;
  Message({
    required this.text, 
    required this.date, 
    required this.isSentByMe});
}