import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/question_paper/question_paper_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  // ignore: no_leading_underscores_for_local_identifiers
  QuestionPaperController _questionPaperController = Get.put(QuestionPaperController());
    return Scaffold(
      body: Obx(() => ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            child: SizedBox(
              width: 200,
              height: 200,
              child: FadeInImage(
                image: NetworkImage(
                  _questionPaperController.allPaperImages[index]),
                  // ignore: prefer_const_constructors
                  placeholder: AssetImage('assets/images/app_splash_logo.png'),
              )));
        },
        separatorBuilder: (BuildContext context, int index){
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: _questionPaperController.allPaperImages.length)),
      );
  }
}