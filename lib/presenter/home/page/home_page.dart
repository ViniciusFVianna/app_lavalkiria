import 'package:app_lavalkiria/design_system/theme/colors/app_colors.dart';
import 'package:app_lavalkiria/presenter/home/page/home_controller.dart';
import 'package:app_lavalkiria/presenter/home/wiget/home_content.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../design_system/images/logo.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    controller.onInit();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.primaryLight,
    appBar: AppBar(
      backgroundColor: AppColors.primaryBase,
      title: SizedBox(height: 40, child: Logo().call()),
      leading: InkWell(
        onTap: () {
          controller.changePage(3);
          pageController.animateToPage(
            3,
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundColor: AppColors.primaryDark,
            child: Text('VV', style: TextStyle(color: AppColors.primaryWhite)),
          ),
        ),
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                HomeContent(controller: controller),
                Center(child: Text('Indisponível no protótipo', style: TextStyle(
                  color: AppColors.darkPrimaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),)),
                Center(child: Text('Indisponível no protótipo', style: TextStyle(
                  color: AppColors.darkPrimaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),)),
                Center(child: Text('Indisponível no protótipo', style: TextStyle(
                  color: AppColors.darkPrimaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),)),
              ],
            ),
          ),
        ],
      ),
    ),
    bottomNavigationBar: ListenableBuilder(
      listenable: controller.currentPage,
      builder: (context, value) {
        return BottomNavigationBar(
          selectedItemColor: AppColors.primaryBase,
          unselectedItemColor: AppColors.darkPrimaryLight,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: controller.currentPage.data,
          onTap: (index) {
            controller.changePage(index);
            pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            );
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Symbols.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Symbols.local_laundry_service_rounded),
              label: 'Serviços',
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.receipt),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.person),
              label: 'Perfil',
            ),
          ],
        );
      },
    ),
  );
}
