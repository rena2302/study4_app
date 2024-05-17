import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study4_app/controller/home/home_controller.dart';
import 'package:study4_app/obj/course.dart';

class CourseTab extends StatelessWidget{
  const CourseTab({super.key});

  @override
  Widget build(BuildContext context){
    return GetX<HomeController> (
      builder: (controller) => Scaffold(
        body: bodyGenerate(controller.courseList),
      ),
    );
  }
   //Body generate
    Widget bodyGenerate(List<Course> courseList) {
    return Column(
      children: [
        const Text(
          'Khóa học online',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: courseList.length,
            itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.network(courseList[index].getImageAsset()),
                      Text(
                        courseList[index].getTitle(),
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        courseList[index].getPrice(),
                        style: TextStyle(
                          color: Colors.green[300],
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}