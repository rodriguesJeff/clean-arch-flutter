import 'package:clean_arch_resocoder/core/platform/network_info.dart';
import 'package:clean_arch_resocoder/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';
import 'package:clean_arch_resocoder/features/number_trivia/data/datasources/number_trivia_remove_datasource.dart';
import 'package:clean_arch_resocoder/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_resocoder/core/error/failure.dart';
import 'package:clean_arch_resocoder/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTrivialRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>>? getConcreteNumberTrivia(int number) {
    return null;
  }

  @override
  Future<Either<Failure, NumberTrivia>>? getRandomNumberTrivia() {
    return null;
  }
}
