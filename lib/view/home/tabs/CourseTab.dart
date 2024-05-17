import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study4_app/controller/home/HomeController.dart';
import 'package:study4_app/obj/Course.dart';

class HomeTab extends StatelessWidget{
  const HomeTab({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return GetX<HomeController> (
      builder: (controller) => Scaffold(
        body: bodyGenerate(controller.courseList),
      ),
    );
  }
   //Body generate
    ListView bodyGenerate(List<Course> courseList) {
    return ListView.builder(
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
    );
  }
}