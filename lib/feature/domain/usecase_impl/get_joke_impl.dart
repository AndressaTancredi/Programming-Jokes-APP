import 'package:dartz/dartz.dart';
import 'package:programming_jokes_app/feature/domain/entities/joke_entity.dart';
import 'package:programming_jokes_app/feature/domain/repository/get_joke_repo.dart';
import 'package:programming_jokes_app/feature/domain/usecases/get_joke_uc.dart';

class GetJokeImpl implements GetJokeUC {
  final GetJokeRepo getJokeRepo;

  GetJokeImpl(this.getJokeRepo);

  @override
  Future<Either<Exception, List<JokeEntity>>> call(String question, String answer) {
    return getJokeRepo.getJoke(question, answer);
  }
}
