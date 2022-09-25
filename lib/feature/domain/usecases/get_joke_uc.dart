import 'package:dartz/dartz.dart';
import '../entities/joke_entity.dart';

abstract class GetJokeUC{
  Future<Either<Exception, List<JokeEntity>>> call(String question, String answer);
}
