import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study4_app/obj/Course.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
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
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child:  Text(
              'STUDY4',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body:
          SingleChildScrollView(
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
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), //Disable scroll for this gridview
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: courseList.length,
                  itemBuilder: (context, index){
                    return Container(
                      color: Colors.blue[100],
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 8.0, // Spacing between children
                        children: [
                          newTextDrawer('HAHA'),
                          newTextDrawer('HAHA'),
                          newTextDrawer('HAHA'),
                          newTextDrawer('HAHA'),
                          newTextDrawer('HAHA'),
                          newTextDrawer('HAHA'),
                          newTextDrawer('HAHA'),
                        ],
                      )
                    );
                  }
                  )
              ],
            ),
          ),

      drawer: Drawer(
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
      ),
    );
  }

  
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

