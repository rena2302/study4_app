import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study4_app/obj/course.dart';
import 'package:study4_app/utils/search_util.dart';

class ExamTab extends StatelessWidget{
  const ExamTab({ super.key });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: bodyGenerate(context),
      );
  }

  Widget bodyGenerate(BuildContext context) {
    var examList = [
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
      Course.withFullField(
          '[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết',
          'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp',
          '699.000đ'),
    ];
    return Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Thư viện đề thi',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () =>
                        showSearch(context: context, delegate: SearchUtil()),
                    icon: const Icon(Icons.search))
              ],
            ).paddingAll(16),
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(12.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
                itemCount: examList.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Column(
                        children: [
                          Image.network(examList[index].getImageAsset()),
                          Text(
                            examList[index].getTitle(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ).paddingAll(16),
                    ),
                  );
                },
          ),
        ],
      );
  }
}