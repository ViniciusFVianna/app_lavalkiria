import 'package:app_lavalkiria/app/navigation/router_register.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigator {
  static BuildContext? get _context =>
      RouterRegister.I.globalContext.currentContext;

  static Future<dynamic> popAndPush(Type page, {Object? extra}) async {
    _context?.pop();
    return await _context?.push('/$page', extra: extra);
  }

  static Future<dynamic> push(Type page, {Object? extra}) async {
    return await _context?.push('/$page', extra: extra);
  }

  static void pushReplacement(Type page, {Object? extra}) {
    _context?.go('/$page', extra: extra);
  }

  static void pop({dynamic result}) {
    if (_context != null) {
      for (int i = 0; i < 1; i++) {
        if (GoRouter.of(_context!).canPop()) {
          _context?.pop(result);
        }
      }
    }
  }

  static String? get currentRoute => GoRouter.of(_context!).state.fullPath;
}
