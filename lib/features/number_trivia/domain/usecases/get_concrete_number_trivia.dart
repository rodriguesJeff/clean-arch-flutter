import 'package:clean_arch_resocoder/core/error/failure.dart';
import 'package:clean_arch_resocoder/core/usecases/usecase.dart';
import 'package:clean_arch_resocoder/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_resocoder/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>?> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  // Params({required this.number}) : super([number]);
  const Params({required this.number});

  @override
  List<int> get props => [number];
}
