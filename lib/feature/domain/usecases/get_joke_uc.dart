import 'package:dartz/dartz.dart';
import '../entities/joke_entity.dart';

abstract class GetJokeUC{
  Either<Exception, JokeEntity> call(JokeEntity jokes);
}
