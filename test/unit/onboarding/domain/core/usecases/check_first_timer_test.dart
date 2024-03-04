
import 'package:dartz/dartz.dart';
import 'package:education_app_tdd/core/error/failure.dart';
import 'package:education_app_tdd/src/onboarding/domain/repo/onboadring_repo.dart';
import 'package:education_app_tdd/src/onboarding/domain/usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'onboarding_repo_mock.dart';

void main() {
  late OnBoardingRepo repo;
  late CacheFirstTimer usecase;


  setUp((){
    repo = MockOnBoardingRepo();
    usecase = CacheFirstTimer(repo);
  });

  test('should be call the [OnBoardingRepo.cacheFirstTimer]'
  'and return the right data', () async=> {
    when(()=>repo.cachedFirstTimer()).thenAnswer((_) async =>
      Left(ServerFailure(message: 'UnKnown error occured', statusCode: 500)))
  });
}