import '../../domain/entities/joke_entity.dart';
import '../../domain/repository/get_joke_repo.dart';
import '../datasources/get_joke_data_source.dart';
import 'package:dartz/dartz.dart';

class GetJokeRepoImpl implements GetJokeRepo {
  final GetJokeDataSource remoteDataSource;

  GetJokeRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Exception, List<JokeEntity>>> getJoke(String question, String answer) async {
    final remoteGetJoke = await remoteDataSource.getJoke(question, answer);

    if (remoteGetJoke.isNotEmpty) {
      return Right(remoteGetJoke);
    } else {
      return Left(Exception("error getJoke"));
    }
  }
}
