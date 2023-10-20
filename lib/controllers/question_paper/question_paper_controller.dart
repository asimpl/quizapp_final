
//import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:quizapp/services/firebase_storage_service.dart';

class QuestionPaperController extends GetxController{
  final allPaperImages = <String>[].obs;
  @override
  void onReady(){
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = ["biology", "chemistry", "math", "physics"];
    try {
      for (var img in imgName) {
        final imgUrl = await Get.find<FireBaseStorageService>().getImage(img);
        allPaperImages.add(imgUrl!);
      }
    }catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
   }
  }
