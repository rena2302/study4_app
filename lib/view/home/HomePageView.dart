import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study4_app/controller/home/HomeController.dart';
import 'package:study4_app/obj/Course.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}) : super(key: key);
  
  final homeController = Get.find<HomeController>();

  final List<Course> courseList = [
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
    ];

  Widget build(BuildContext context){
    return  GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: appBarGenerate(),
        drawer: drawerGenerate(),
        body:  bodyGenerate(courseList),
      ),
    );
  }
  //Body generate
    SingleChildScrollView bodyGenerate(List<Course> courseList) {
    return SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
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
              SizedBox(height: 50,),
              Divider(),
              SizedBox(height: 10,),
              const Text(
                'De thi moi nhat',
               style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.all(12.0),
                physics: const NeverScrollableScrollPhysics(), //Disable scroll for this gridview
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                itemCount: courseList.length,
                itemBuilder: (context, index){
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'IELTS Simulation Listening test',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'IELTS Simulation Listening test',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
                )
            ],
          ),
        );
  }
  //Drawer generate
    Drawer drawerGenerate() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          newTextDrawer('Khoa Hoc Online'),
          newTextDrawer('De Thi Online'),
          newTextDrawer('Flashcards'),
          newTextDrawer('Blog'),
          newTextDrawer('Kich Hoat Khoa Hoc'),

          Padding(
            padding: const EdgeInsets.all(22.0),
            child: ElevatedButton(
              onPressed: () {
              },
              child: const Text(
                'Login',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  //Appbar generate code
    AppBar appBarGenerate() {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child:  Text(
            'Study4',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
  //Item Drawer generate
    ListTile newTextDrawer(String name) {
    return ListTile(
          title: Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
          onTap: (){},
        );
    }
}