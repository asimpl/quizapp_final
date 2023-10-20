import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quizapp/firebase_ref/loading_status.dart';
import 'package:quizapp/firebase_ref/references.dart';
import 'package:quizapp/models/question_paper_model.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    super.onReady(); //разрешение от Getx этот метод переопределяется.
    uploadData();
  }
  
  
  final loadingStatus = LoadingStatus.loading.obs;
  Future<void> uploadData() async {
    loadingStatus.value = LoadingStatus.loading;
    
    
    final fireStore = FirebaseFirestore.instance;
/*manifestContent - доступ к данным bundle используя Get.context! (без проверки на )
                    контроллер
                    считываение данных .loadString();
используя котроллер гет для управления состоянием и маршрутизацией.
  Вопрос:
    - loadString() какие еще форматы может считывать AssetBundle?
 */
// Бандл говорит компилятору - эй чувак
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString('AssetManifest.json');

//полученные данные десериализируются в обьект
//json.decode используется для десериализации json строки в обьект manifestMap
//с типом Map<String, dynamic> что бы испольовать ключи.
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

// фильтруем manifestMap.keys.where():
// условие - начинаются с "assets/DB/paper" и содержат ".json".
    final paperInAssets = manifestMap.keys
        .where((path) =>
            path.startsWith('assets/DB/paper') && path.contains('.json'))
        .toList();

    List<QuestionPaperModel> quiestionPapers = [];
    for (var paper in paperInAssets) {
      //получает данные из paper присваивается к обьекту stringPaper
      String stringPaperContent = await rootBundle.loadString(paper);

      //считывает данные методом fromJson и добовляет в коллекцию quiestionPapers
      // загрузка содержимого JSON-файла в переменную dataUploader
      quiestionPapers
          .add(QuestionPaperModel.fromJson(json.decode(stringPaperContent)));
    }
    var batch = fireStore.batch();
    for (var paper in quiestionPapers) {
      batch.set(questionPaperRF.doc(paper.id), {
        'title': paper.title,
        'image_url': paper.imageUrl,
        'description': paper.description,
        'time_seconds': paper.timeSeconds,
        'questions_count': paper.questions == null ? 0 : paper.questions!.length
      });

      for (var questions in paper.questions!) {
        final questionPath =
            questionRF(paperId: paper.id, questionId: questions.id);
        batch.set(questionPath, {
          "question": questions.question,
          "correct_answer": questions.correctAnswer,
        });

        for (var answer in questions.answers) {
          batch.set(questionPath.collection("answers").doc(answer.identifier),
              {"identifier": answer.identifier, 
              "answer": answer.answer
            });
        }
      }
    }

    await batch.commit();
    loadingStatus.value = LoadingStatus.completed;
  }
}
