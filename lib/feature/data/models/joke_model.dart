import 'package:programming_jokes_app/feature/domain/entities/joke_entity.dart';

class JokeModel extends JokeEntity {
  const JokeModel({
    required super.question,
    required super.answer
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
    JokeModel(
      question: json['setup'] as String,
      answer: json['punchline'] as String
    );
}
