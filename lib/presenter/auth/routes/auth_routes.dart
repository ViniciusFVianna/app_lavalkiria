import 'package:app_lavalkiria/presenter/auth/auth/page/auth_page.dart';
import 'package:flutter/material.dart';

import '../../../app/navigation/router_base.dart';
import '../../../app/navigation/router_register.dart';
import '../onboarding/page/onboarding_page.dart';

class AuthRoutes extends RouterBase {
  @override
  void call() {
    RouterRegister.I.add<AuthPage>(
          (_) => AuthPage(key: Key('$AuthPage')),
    );
    RouterRegister.I.add<OnboardingPage>(
          (_) => OnboardingPage(key: Key('$OnboardingPage')),
    );
  }
}
