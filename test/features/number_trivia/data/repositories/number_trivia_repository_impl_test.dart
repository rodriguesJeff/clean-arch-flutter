import 'package:clean_arch_resocoder/core/platform/network_info.dart';
import 'package:clean_arch_resocoder/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';
import 'package:clean_arch_resocoder/features/number_trivia/data/datasources/number_trivia_remove_datasource.dart';
import 'package:clean_arch_resocoder/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock
    implements NumberTrivialRemoteDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late NumberTriviaRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = NumberTriviaRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });
}
