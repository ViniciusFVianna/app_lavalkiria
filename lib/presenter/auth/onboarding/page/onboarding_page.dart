import 'package:app_lavalkiria/app/navigation/app_navigator.dart';
import 'package:app_lavalkiria/design_system/images/devices.dart';
import 'package:app_lavalkiria/design_system/images/laundry.dart';
import 'package:app_lavalkiria/presenter/auth/auth/page/auth_page.dart';
import 'package:app_lavalkiria/presenter/auth/onboarding/page/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../design_system/images/quemich.dart';
import '../../../../design_system/theme/colors/app_colors.dart';
import '../widget/page_content.dart';
import '../widget/page_dots.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  OnboardingController controller = OnboardingController();
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      alignment: .center,
      child: Column(
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 35),
          ListenableBuilder(
            listenable: controller.changePage,
            builder: (context, value) {
              return Container(
                width: MediaQuery.sizeOf(context).width,
                alignment: .centerRight,
                child: TextButton(
                  onPressed: () => AppNavigator.pushReplacement(AuthPage),
                  child: Text(
                    'Pular',
                    style: TextStyle(
                      color: AppColors.darkPrimaryDark,
                      fontWeight: .w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * .72,
            child: PageView(
              onPageChanged: (page) => controller.onChangePage(page),
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                PageContent(
                  title: 'Suas roupas limpas em poucos cliques',
                  description:
                      'Peça a lavagem e passadoria pelo app. Nós cuidamos de tudo enquanto você aproveita o seu dia.',
                  image: LaundryImage(),
                ),
                PageContent(
                  title: 'Tratamento especial para cada fibra',
                  description:
                      'Utilizamos produtos biodegradáveis e processos que preservam a vida útil das suas peças favoritas.',
                  image: ChemistryImage(),
                ),
                PageContent(
                  title: 'Pronto para usar, direto na sua porta',
                  description:
                      'Agende a retirada e receba suas roupas cheirosas, dobradas e prontas para o guarda-roupa.',
                  image: DevicesImage(),
                ),
              ],
            ),
          ),
          ListenableBuilder(
            listenable: controller.changePage,
            builder: (context, value) {
              return Row(
                mainAxisAlignment: .center,
                children: [
                  PageDots(page: controller.changePage.data, pages: 3)
                ]
              );
            }
          ),
          SizedBox(height: 32),
        ],
      ),
    ),
    bottomNavigationBar: ListenableBuilder(
        listenable: controller.changePage,
        builder: (context, value) {
          return Container(
            width: MediaQuery.sizeOf(context).width,
            height: 48,
            margin: EdgeInsets.only(bottom: 20, left: 24, right: 24),
            child: ElevatedButton(
              onPressed: controller.changePage.data == 2
                  ? () => AppNavigator.pushReplacement(AuthPage)
                  : () => pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryDark,
                surfaceTintColor: AppColors.primaryDark,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                controller.changePage.data != 2 ? 'Continue' : 'Pular',
                style: TextStyle(
                  color: AppColors.primaryWhite,
                  fontWeight: .w700,
                  fontSize: 16,
                ),
              ),
            ),
          );
        }
    ),
  );
}
