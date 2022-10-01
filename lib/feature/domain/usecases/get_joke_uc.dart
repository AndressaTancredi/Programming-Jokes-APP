import 'package:dartz/dartz.dart';
import 'package:programming_jokes_app/feature/domain/entities/joke_entity.dart';
import 'package:programming_jokes_app/feature/domain/repository/get_joke_repo.dart';
import 'package:programming_jokes_app/feature/domain/usecases/usecase.dart';

class GetJokeUseCase extends UseCase<List<JokeEntity>, void> {
  final GetJokeRepo getJokeRepo;
  GetJokeUseCase(this.getJokeRepo);

  @override
  Future<Either<Exception, List<JokeEntity>>> call(void noParams) {
    return getJokeRepo.getJokes();
  }
}
