// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCQrAGnlcuR5qlLZk8h_MEOWoh9AotC0VE',
    appId: '1:267362937091:web:2c81aec2233283d7f02136',
    messagingSenderId: '267362937091',
    projectId: 'stud-5003b',
    authDomain: 'stud-5003b.firebaseapp.com',
    storageBucket: 'stud-5003b.appspot.com',
    measurementId: 'G-TLQY2JM4JC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOyXo43UGCTjarCB1OWgN9FHD1t6N1jv4',
    appId: '1:267362937091:android:5cc66fe6a934cd89f02136',
    messagingSenderId: '267362937091',
    projectId: 'stud-5003b',
    storageBucket: 'stud-5003b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChxivQy-ZXQOjl2VV3hhyXyZUS-KGPWVs',
    appId: '1:267362937091:ios:a76497b78ef173a2f02136',
    messagingSenderId: '267362937091',
    projectId: 'stud-5003b',
    storageBucket: 'stud-5003b.appspot.com',
    iosBundleId: 'com.example.quizappFinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyChxivQy-ZXQOjl2VV3hhyXyZUS-KGPWVs',
    appId: '1:267362937091:ios:20aebddbca62b661f02136',
    messagingSenderId: '267362937091',
    projectId: 'stud-5003b',
    storageBucket: 'stud-5003b.appspot.com',
    iosBundleId: 'com.example.quizappFinal.RunnerTests',
  );
}
