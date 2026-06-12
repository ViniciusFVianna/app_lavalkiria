
import 'package:flutter/foundation.dart';

import 'navigation/router_register.dart';

class Setup {
  Setup._();
  static Setup? _instance;
  static Setup get I => _instance ??= Setup._();
  static void dispose() {
    _instance = null;
  }

  Future<void> call() async {
    RouterRegister.I();

    if (kDebugMode) {
      //keep this here to clear cache during development, to avoid issues with data
      //help us to test the app with a clean state without having to clear the app data manually
      // await GetIt.I<ClearCacheUseCase>()();
    }
  }
}