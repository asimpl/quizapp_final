import 'package:get/get.dart';
import 'package:quizapp/controllers/question_paper/question_paper_controller.dart';
import 'package:quizapp/screens/home/home_screen.dart';
import 'package:quizapp/screens/spalsh_screen.dart';

class AppRoutes{
  static List<GetPage> routes() => [
  GetPage(name: "/", page: () => const HomeScreen()),
  GetPage(name: "/introduction", page: () => const AppIntroductionScreen()),
  GetPage(name: "/home", page: () => const HomeScreen(),
    binding: BindingsBuilder(() {
        Get.put(QuestionPaperController());
      })),
  ];
}  

