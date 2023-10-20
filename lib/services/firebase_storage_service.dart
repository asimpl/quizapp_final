
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

Reference get fireBaseStorage => FirebaseStorage.instance.ref();

class FireBaseStorageService extends GetxService {
  
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef = fireBaseStorage 
          .child("question_paper_images")
          .child('${imgName.toLowerCase()}.png');
          var imgUrl = await urlRef.getDownloadURL();
          return imgUrl;  
    }catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }    
}