
import 'package:education_app_tdd/src/onboarding/domain/repo/onboadring_repo.dart';
import 'package:education_app_tdd/src/onboarding/domain/usecases.dart';
import 'package:flutter_test/flutter_test.dart';

import 'onboarding_repo_mock.dart';

void main() {
  late OnBoardingRepo repo;
  late CacheFirstTimer usecase;


  setUp((){
    repo = MockOnBoardingRepo();
    usecase = CacheFirstTimer(repo);
  });
}