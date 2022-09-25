import 'package:get_it/get_it.dart';
import 'package:programming_jokes_app/feature/data/datasources/get_joke_data_source.dart';
import 'package:programming_jokes_app/feature/domain/repository/get_joke_repo.dart';
import 'package:programming_jokes_app/feature/domain/usecases/get_joke_uc.dart';

import 'data/repository/get_joke_repo_impl.dart';
import 'domain/usecase_impl/get_joke_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // DataSource
  sl.registerLazySingleton<GetJokeDataSource>(() => GetJokeDatasourceImpl());

  // Repositories
  sl.registerLazySingleton<GetJokeRepo>(() => GetJokeRepoImpl(remoteDataSource: sl()));

  // UseCase
  sl.registerLazySingleton<GetJokeUC>(() => GetJokeImpl(sl()));
}
