import 'package:app_lavalkiria/app/navigation/router_base.dart';
import 'package:app_lavalkiria/presenter/splash/routes/splash_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presenter/auth/routes/auth_routes.dart';
import '../../presenter/home/routes/home_router.dart';
import '../../presenter/splash/page/splash_page.dart';

typedef PageBuilder<T extends Widget, E> = T Function(E? extra);

class RouterRegister {
  RouterRegister._();
  static RouterRegister? _instance;
  static RouterRegister get I => _instance ??= RouterRegister._();

  final List<RouteBase> routes = [];
  final List<RouterBase> routers = [];
  final GlobalKey<NavigatorState> globalContext = GlobalKey<NavigatorState>();

  GoRouter get router => GoRouter(
    navigatorKey: globalContext,
    initialLocation: '/$SplashPage',
    routes: routes,
  );

  void add<T>(PageBuilder pageBuilder) {
    routes.add(
      GoRoute(path: '/$T', builder: (_, state) => pageBuilder(state.extra)),
    );
  }

  void register() {
    routers.add(SplashRoutes());
    routers.add(AuthRoutes());
    routers.add(HomeRoutes());
  }

  void call() async {
    register();

    for (var router in routers) {
      router();
    }
    routers.clear();
  }
}
