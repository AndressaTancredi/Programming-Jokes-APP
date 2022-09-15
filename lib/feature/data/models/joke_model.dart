import 'package:programming_jokes_app/feature/domain/entities/joke_entity.dart';

class JokeModel extends JokeEntity {
  late String question;
  late String answer;
  
  JokeModel({required this.question, required this.answer})
  : super(question: question, answer: answer);
  
  static JokeModel fromJson(Map<String, dynamic> json) {
    return JokeModel(question: json['setup'], answer: json['punchline']);
  }
}
