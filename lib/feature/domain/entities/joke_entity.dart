import 'package:equatable/equatable.dart';

class JokeEntity extends Equatable {
  final String question;
  final String answer;

  const JokeEntity({
    required this.question,
    required this.answer
  });

  @override
  List<Object> get props =>
      [question, answer];
}
