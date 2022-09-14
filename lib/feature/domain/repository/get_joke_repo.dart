import 'package:dartz/dartz.dart';
import 'package:programming_jokes_app/feature/domain/entities/joke_entity.dart';

abstract class GetJokeRepo{
  Either<Exception, JokeEntity> call(JokeEntity jokes);
}
