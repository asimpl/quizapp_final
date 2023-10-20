# quizapp_final

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
*****************************************************************************************

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quizapp/data_uploader_screen.dart';
import 'package:quizapp/firebase_options.dart';

Future<void> main() async
{
//  WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    GetMaterialApp(
     home: DataUploaderScreen(),
     ),
  );
}

/*
void main() async {
  // Инициализация Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  try {
    // Инициализация Firebase Storage
    FirebaseStorage storage = FirebaseStorage.instance;

    // Создаем ссылку на корневую директорию Firebase Storage
    Reference rootReference = storage.ref();

    // Проверяем связь, попробовав получить метаданные корневой директории
    FullMetadata metadata = await rootReference.getMetadata();

    // Если операция успешно выполнена, это означает, что у вас есть связь с Firebase Storage
    if (kDebugMode) {
      print('Связь с Firebase Storage успешно установлена.');
    }
  } catch (e) {
    // Если произошла ошибка, выводим сообщение об ошибке
    if (kDebugMode) {
      print('Ошибка при проверке связи с Firebase Storage: $e');
    }
  }
}
*/


/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    //theme: LightTheme().buildLightTheme(),
     theme: Get.find<ThemeController>().lightTheme,
     initialRoute: '/',
     getPages: AppRoutes.routes(),
    ); 
  }
}*/

/*Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initAndNavigate();
}

void initAndNavigate() {
  AuthController authController = AuthController();
  authController.initAuth(); // Вызываем без await
 runApp(GetMaterialApp(
    initialRoute: "/", // Начальный маршрут
    getPages: [
      GetPage(name: "/", page: () => DataUploaderScreen()), // Пример маршрута
      GetPage(name: "/home", page: () => HomeScreen()), // Маршрут home
      GetPage(name: "/introduction", page: () => AppIntroductionScreen()), // Маршрут introduction
      // Добавьте другие маршруты здесь, если есть
    ],
  ));
}*/








