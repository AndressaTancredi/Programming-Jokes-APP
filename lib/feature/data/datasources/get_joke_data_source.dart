import 'dart:convert';
import 'package:dartz/dartz.dart';
import '../models/joke_model.dart';
import 'package:http/http.dart' as http;

class JokeAPI {
  static Future<Either<int, List<JokeModel>>> getJoke() async {

    final response = await http.get(
      Uri.https(
          'official-joke-api.appspot.com',
              '/jokes/programming/random'),
    );

    final responseBody = json.decode(response.body);

    Either<int, List<JokeModel>> result;

    if (response.statusCode != 200) {
      result = Left(response.statusCode);
    } else {
      final jokeList = responseBody as List;
      result = Right(jokeList
          .map((joke) =>
          JokeModel.fromJson(joke as Map<String, dynamic>))
          .toList());
    }
    return result;
  }
}
