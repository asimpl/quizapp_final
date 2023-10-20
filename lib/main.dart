import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/bindings/initial_bindings.dart';
import 'package:quizapp/controllers/theme_controller.dart';
import 'package:quizapp/routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
// Инициализация Firebase
//  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.find<ThemeController>().lightTheme,
      getPages: AppRoutes.routes(),
    );
  }
}
