import 'package:flutter/material.dart';

import '../design_system/theme/apptheme/app_theme.dart';
import 'navigation/router_register.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    theme: AppTheme.lightTheme,
    darkTheme: AppTheme.lightTheme,
    themeMode: ThemeMode.light,
    routerConfig: RouterRegister.I.router,
  );
}
