
import 'package:education_app_tdd/core/usecases/check_first_timer.dart';
import 'package:education_app_tdd/core/utils/typedef.dart';
import 'package:education_app_tdd/src/onboarding/domain/repo/onboadring_repo.dart';

class CheckUserIsFirstTimer extends UseCaseWithOutParams<bool>{
  const CheckUserIsFirstTimer(this._repo);

  final OnBoardingRepo _repo;
  @override
  ResultFuture<bool> call() => _repo.checkIfIsFirstTimer();

}