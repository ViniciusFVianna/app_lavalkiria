import 'package:flutter/material.dart';

import '../../../app/navigation/router_base.dart';
import '../../../app/navigation/router_register.dart';
import '../page/splash_page.dart';

class SplashRoutes extends RouterBase {
  @override
  void call() {
    RouterRegister.I.add<SplashPage>(
          (_) => SplashPage(key: Key('$SplashPage')),
    );
  }
}
