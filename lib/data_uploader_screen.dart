import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/question_paper/data_uploader.dart';
import 'package:quizapp/firebase_ref/loading_status.dart';

class DataUploaderScreen extends StatefulWidget {
  const DataUploaderScreen({super.key});

  @override
  State<DataUploaderScreen> createState() => _DataUploaderScreenState();
}

class _DataUploaderScreenState extends State<DataUploaderScreen> {
  
//создаем экземпляр контроллера с помощью Get.put() и сохраняете его в переменной.  
 DataUploader controller = Get.put(DataUploader());

  @override
  Widget build(BuildContext context) {
  // метод build - это место, где вы определяете внешний вид 
  //и структуру вашего виджета на основе текущего состояния и данных   
    return  Scaffold(
      body: Center(
        child: Obx(()=>Text(controller.loadingStatus.value==LoadingStatus.completed
        ?"Uplouding Complete"
        :"Uploading...")),
    ));
  }
}