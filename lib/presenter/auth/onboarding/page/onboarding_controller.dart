import 'package:app_lavalkiria/app/utils/command.dart';
import 'package:flutter/material.dart';

enum OnboardingStatus {initial, loading, loaded, success, error }

class OnboardingController {
  Command<OnboardingStatus> status = Command<OnboardingStatus>(data: OnboardingStatus.initial);
  Command<int> changePage = Command<int>(data: 0);

  void onInit(){
  }

  void onChangePage(int page) {
     changePage.data = page;
    changePage.execute();
  }
}