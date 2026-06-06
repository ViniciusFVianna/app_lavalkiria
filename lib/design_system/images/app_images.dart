import 'package:flutter_svg/svg.dart';

abstract class AppImages {
  final String path;
  AppImages(this.path);
  SvgPicture call() => SvgPicture.asset(path);
}