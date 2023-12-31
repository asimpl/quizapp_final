class QuestionPaperModel {
  String id;
  String title;
  String imageUrl;
  String description;
  int timeSeconds;
  List<Questions>? questions;

  QuestionPaperModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description, 
    required this.timeSeconds,
    this.questions,
  });

  QuestionPaperModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        title = json['title'] as String,
        imageUrl = json['image_url'] as String,
        description = json['description'] as String,
        timeSeconds = json['time_seconds'] as int,
        questions = (json['questions'] as List)
            .map((dynamic e) => Questions.fromJson(e as Map<String, dynamic>))
            .toList(); 

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};//new Map<String, dynamic>();
      data['id'] = id;
      data['title'] = title;
      data['image_url'] = imageUrl;
      data['description'] = description;
      data['time_seconds'] = timeSeconds;
       return data;
  }
}

class Questions {
  String id;
  String question;
  List<Answers> answers;
  String? correctAnswer;

  Questions({
    required this.id,
    required this.question,
    required this.answers,
    this.correctAnswer,
  });

  Questions.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        question = json['question'],
        answers = (json['answers'] as List)
            .map((e) => Answers.fromJson(e)).toList(),
        correctAnswer = json['correct_answer'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};//new Map<String, dynamic>();
      data['id'] = id;
      data['question'] = question;
      /*if (answers != null) {
        data['answer'] = answers.map((v) => v.toJson()).toList();
       }*/
      data['answers'] = answers.map((v) => v.toJson()).toList();
      data['correct_answer'] = correctAnswer;
      return data;
  }

}

class Answers {
  String? identifier;
  String? answer;
  Answers({required this.identifier, required this.answer});

  Answers.fromJson(Map<String, dynamic> json)
      : identifier = json['identifier'],
        answer = json['Answer'];

 Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};//new Map<String, dynamic>();
      data['identifier'] = identifier;
      data['answer'] = answer;
    return data;
  } 
}