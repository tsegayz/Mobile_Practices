import 'package:flutter/material.dart';

class LabQuiz extends StatefulWidget {
  LabQuiz({Key? key}) : super(key: key);

  @override
  State<LabQuiz> createState() => _LabQuizState();
}

class _LabQuizState extends State<LabQuiz> {
  Widget dartBoard() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 25),
      child: Stack(alignment: Alignment.center, children: [
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55), color: Colors.white),
        ),
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Color.fromARGB(255, 14, 74, 134)),
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35), color: Colors.blue),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.red),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.yellow),
        ),
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Colors.black),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10, top: 78),
                            width: 110,
                            height: 90,
                            color: Colors.green,
                          ),
                          
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}


// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations, invalid_required_positional_param

// import 'package:flutter/material.dart';
// import '../model/model.dart';
// import 'package:go_router/go_router.dart';

// class ProfileSetting extends StatelessWidget {
//   final User user;
//   ProfileSetting(@required this.user);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Color.fromARGB(255, 255, 255, 255),
//           title: Text("Setting", style: TextStyle(color: Colors.black)),
//         ),
//         body: Container(
//             child: ListView(
//           scrollDirection: Axis.vertical,
//           children: [
//             SizedBox(height: 15),
//             Row(
//               children: [
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Center(
//                   child: Stack(clipBehavior: Clip.none, children: [
//                     CircleAvatar(
//                       radius: 58,
//                       backgroundImage: AssetImage('assets/melancholy.png'),
//                     ),
//                     Positioned(
//                         height: 35,
//                         width: 35,
//                         bottom: 0,
//                         right: -3,
//                         child: RawMaterialButton(
//                           onPressed: () {},
//                           fillColor: Colors.white,
//                           child: Icon(
//                             Icons.camera_alt,
//                             size: 19,
//                             color: Colors.grey.shade600,
//                           ),
//                           shape: CircleBorder(
//                             side: BorderSide(
//                                 width: 2,
//                                 color: Colors.grey.shade200,
//                                 style: BorderStyle.solid),
//                           ),
//                         ))
//                   ]),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "${user.name}",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 20,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         "${user.email}",
//                         style: TextStyle(
//                           color: Colors.black38,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "${user.username}",
//                         style: TextStyle(
//                           color: Colors.black38,
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             const Divider(
//               thickness: 0.1,
//               indent: 20,
//               endIndent: 20,
//               color: Colors.black,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             GestureDetector(
//               onTap: () {
//                 context.push("/profile", extra: user);
//               },
//               child: Row(
//                 // ignore: prefer_const_literals_to_create_immutables
//                 children: [
//                   SizedBox(
//                     width: 20,
//                   ),
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Color.fromARGB(255, 233, 235, 252),
//                     child: Icon(
//                       Icons.person,
//                       size: 30,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Edit Profile",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 20,
//                     ),
//                   ),
//                   Expanded(child: SizedBox()),
//                   Icon(Icons.arrow_forward_ios),
//                   SizedBox(
//                     width: 20,
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             const Divider(
//               thickness: 0.05,
//               indent: 20,
//               endIndent: 20,
//               color: Colors.black,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             GestureDetector(
//               onTap: () {
//                 context.push("/admin", extra: user);
//               },
//               child: Row(
//                 // ignore: prefer_const_literals_to_create_immutables
//                 children: [
//                   SizedBox(
//                     width: 20,
//                   ),
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Color.fromARGB(255, 233, 235, 252),
//                     child: Icon(
//                       Icons.admin_panel_settings,
//                       size: 30,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Admin",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 20,
//                     ),
//                   ),
//                   Expanded(child: SizedBox()),
//                   Icon(Icons.arrow_forward_ios),
//                   SizedBox(
//                     width: 20,
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             const Divider(
//               thickness: 0.05,
//               indent: 20,
//               endIndent: 20,
//               color: Colors.black,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             GestureDetector(
//               onTap: () {},
//               child: Row(
//                 // ignore: prefer_const_literals_to_create_immutables
//                 children: [
//                   SizedBox(
//                     width: 20,
//                   ),
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Color.fromARGB(255, 233, 235, 252),
//                     child: Icon(
//                       Icons.help,
//                       size: 30,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Help",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 20,
//                     ),
//                   ),
//                   Expanded(child: SizedBox()),
//                   Icon(Icons.arrow_forward_ios),
//                   SizedBox(
//                     width: 20,
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             const Divider(
//               thickness: 0.05,
//               indent: 20,
//               endIndent: 20,
//               color: Colors.black,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             GestureDetector(
//               onTap: () {},
//               child: Row(
//                 // ignore: prefer_const_literals_to_create_immutables
//                 children: [
//                   SizedBox(
//                     width: 20,
//                   ),
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Color.fromARGB(255, 240, 158, 147),
//                     child: Icon(
//                       Icons.logout,
//                       size: 30,
//                       color: Color.fromARGB(255, 247, 31, 3),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Logout",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 20,
//                     ),
//                   ),
//                   Expanded(child: SizedBox()),
//                   Icon(Icons.arrow_forward_ios),
//                   SizedBox(
//                     width: 20,
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//           ],
//         )));
//   }
// }
