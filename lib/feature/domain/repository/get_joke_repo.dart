import 'package:dartz/dartz.dart';
import 'package:programming_jokes_app/feature/domain/entities/joke_entity.dart';

abstract class GetJokeRepo {
  Future<Either<Exception, List<JokeEntity>>> call(String question, String answer);
}
