// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'course.dart';

class CourseDetailsScreen extends StatelessWidget {
  
  final Course course;
  const CourseDetailsScreen ({Key? key, required this.course}) : super(key: key);

  static const valueKey = ValueKey('CourseDetailsScreen');
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}
