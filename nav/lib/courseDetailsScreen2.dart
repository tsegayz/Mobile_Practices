import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class CourseDetailsScreen2 extends StatelessWidget {
  const CourseDetailsScreen2({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    var course = Provider.of<CourseAppState>(context, listen: false).selectedCourse;
    
    return Scaffold(
      appBar: AppBar(title: Text(course?.title ?? "")),
      body: Center(
        child: Column(
          children: [
            Text(course?.title ?? ""),
            Text(course?.code ?? ""),
            Text(course?.description ?? ""),
          ],
        ),
      ),
    );
  }
}
