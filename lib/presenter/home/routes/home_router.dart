import 'package:app_lavalkiria/app/navigation/router_base.dart';
import 'package:app_lavalkiria/presenter/home/page/home_page.dart';
import 'package:flutter/material.dart';

import '../../../app/navigation/router_register.dart';

class HomeRoutes extends RouterBase {
  @override
  void call() {
    RouterRegister.I.add<HomePage>(
          (_) => HomePage(key: Key('$HomePage')),
    );
  }
}