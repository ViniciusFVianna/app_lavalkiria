import 'package:app_lavalkiria/presenter/auth/onboarding/page/onboarding_page.dart';
import 'package:app_lavalkiria/presenter/home/page/home_page.dart';

import '../../../app/navigation/app_navigator.dart';

class SplashController {
void init(){
   Future.delayed(Duration(milliseconds: 600), (){
     AppNavigator.pushReplacement(HomePage);
   });
 }
}