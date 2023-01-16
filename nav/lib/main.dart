// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'course.dart';
import 'courseListScreen.dart';
import 'courseDetailScreen.dart';
import 'package:provider/provider.dart';
import 'courseListScreen2.dart';
import 'courseDetailsScreen2.dart';

// void main() {
//   runApp( CourseApp() );
// }
// class CourseApp extends StatefulWidget {
//   @override
//   State<CourseApp> createState() => CourseAppState();
// }
// class CourseAppState extends State<CourseApp> {

//   Course? _selectedCourse;
//   void _tabHandler(Course course) {
//     setState(() {
//     _selectedCourse = course;
//     });
//   }
//   List<Course> courses = [
//     Course( code: "SiTE-001" ,
//       title: "Introduction To Programming" ,
//       description: "Computer Organization, Architecture, Programming"),
//     Course(code: "SiTE-002" ,
//       title: "Descrete Mathematics" ,
//       description: "Computer Organization, Archi+tecture, Programming"),
//     Course(code: "SiTE-223" ,
//       title: "Mobile Programming" ,
//       description: "Computer Organization, Architecture, Programming"),
//   ];
//   @override
//   Widget build( BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'KindaCode.com',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: Navigator(
//         pages:[
//           MaterialPage(
//             child: CoursesListScreen(
//               courses: courses, 
//               onTapped: _tabHandler
//             )
//           ),          
//           if(_selectedCourse != null)
//             MaterialPage(
//               child: CourseDetailsScreen(course: _selectedCourse!),
//               key: CourseDetailsScreen.valueKey
//           ),
//         ],
//         onPopPage:(route, result) {
//           final page = route.settings as MaterialPage;

//           if (page.key == CourseDetailsScreen.valueKey){
//             _selectedCourse = null;
//           }
//           return route.didPop(result);
//         },
//       )
//     );
//     } 
//   }

void main() {
  runApp( 
    ChangeNotifierProvider(
      create: (_) => CourseAppState(),
      child: CourseApp2(),
    )
  );
}

class CourseAppState extends ChangeNotifier{
  
  Course? selectedCourse;
  List<Course> courses = [
    Course( code: "SiTE-001" ,
      title: "Introduction To Programming" ,
      description: "Computer Organization, Architecture, Programming"),
    Course(code: "SiTE-002" ,
      title: "Descrete Mathematics" ,
      description: "Computer Organization, Archi+tecture, Programming"),
    Course(code: "SiTE-223" ,
      title: "Mobile Programming" ,
      description: "Computer Organization, Architecture, Programming"),
  ];
  void selectCourse(Course? course) {
    selectedCourse = course;
    notifyListeners();
  }
}

class CourseApp2 extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    var appState = Provider.of<CourseAppState>(context);

    return MaterialApp(
      home: Navigator(
        pages: [
          const MaterialPage(
            key: ValueKey('CourseListScreen'),
            child: CoursesListScreen2(),
          ),
          if (appState.selectedCourse != null)
            MaterialPage(
              key: ValueKey(appState.selectedCourse),
              child: const CourseDetailsScreen2())
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) {
              return false;
            }
            Provider.of<CourseAppState>(context, listen: false).selectCourse(null);
            return true;
            },
      )
      );
    } 
  }
