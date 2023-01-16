import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class CoursesListScreen2 extends StatelessWidget {
  const CoursesListScreen2({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    var appState = Provider.of<CourseAppState>(context, listen: false);
    var courses = appState.courses;
    
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
        body: ListView(
          children: [
            for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => appState.selectCourse(course)),
            ],
          ),
        );
      }
    }
