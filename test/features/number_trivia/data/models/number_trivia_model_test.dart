// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:clean_arch_resocoder/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:clean_arch_resocoder/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test');

  test('Deve ser uma subclasse da entidade NumberTrivia', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('Deve retornar um model valido quando o numero no JSON for um inteiro',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      // act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // assert
      expect(result, tNumberTriviaModel);
    });

    test('Deve retornar um model valido quando o numero no JSON for um double',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      // act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // assert
      expect(result, tNumberTriviaModel);
    });
  });

  group('toJson', () {
    test('Deve retornar um mapa JSON contendo os dados', () async {
      // act
      final result = tNumberTriviaModel.toJson();
      // assert
      final expectedJsonMap = {
        "text": "Test",
        "number": 1,
      };
      expect(result, expectedJsonMap);
    });
  });
}
