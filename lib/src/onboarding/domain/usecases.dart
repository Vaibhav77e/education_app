
import 'package:education_app_tdd/core/usecases/check_first_timer.dart';
import 'package:education_app_tdd/core/utils/typedef.dart';
import 'package:education_app_tdd/src/onboarding/domain/repo/onboadring_repo.dart';


class CacheFirstTimer extends UseCaseWithOutParams<void> {
  const CacheFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<void> call() async => _repo.cachedFirstTimer();

}