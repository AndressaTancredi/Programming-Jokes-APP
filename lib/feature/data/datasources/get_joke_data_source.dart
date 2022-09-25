import 'dart:convert';
import '../models/joke_model.dart';
import 'package:http/http.dart' as http;

abstract class GetJokeDataSource {
  Future<List<JokeModel>> getJoke(String question, String answer);
}

class GetJokeDatasourceImpl implements GetJokeDataSource{
  GetJokeDatasourceImpl();

  @override
  Future<List<JokeModel>> getJoke(String question, String answer) async {
    final response = await http.get(
      Uri.https(
          'official-joke-api.appspot.com',
              '/jokes/programming/random'),
    );

    if (response.statusCode == 200) {
      final jokeList = json.decode(response.body) as List;
      return jokeList.map((joke) =>
          JokeModel.fromJson(joke as Map<String, dynamic>)).toList();
    } else {
      throw Exception("Server exception getJoke failed");
    }
  }
}
