import '../../domain/entities/joke_entity.dart';
import '../../domain/repository/get_joke_repo.dart';
import '../datasources/get_joke_data_source.dart';
import 'package:dartz/dartz.dart';

class GetJokeRepoImpl implements GetJokeRepo {
  final GetJokeDataSource remoteDataSource;

  GetJokeRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Exception, List<JokeEntity>>> getJokes() async {
    final remoteGetJokes = await remoteDataSource.getJokes();

    try {
      return Right(remoteGetJokes);
    } on Exception {
      return Left(Exception("getJokes failed"));
    }
  }
}
