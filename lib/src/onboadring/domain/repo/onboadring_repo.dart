
import 'package:education_app_tdd/core/utils/typedef.dart';

abstract class OnBoardingRepo{
  const OnBoardingRepo();
  ResultFuture<void> cachedFirstTimer();
  ResultFuture<bool> checkIfIsFirstTimer();
}