import 'package:app_lavalkiria/design_system/images/logo.dart';
import 'package:app_lavalkiria/design_system/theme/colors/app_colors.dart';
import 'package:app_lavalkiria/presenter/splash/page/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashController controller = SplashController();
  @override
  void initState() {
    super.initState();
    controller.init();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.primaryDark,
    body: Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      alignment: Alignment.center,
      child: Logo().call(),
    ),
  );
}
