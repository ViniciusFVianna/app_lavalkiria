import 'package:app_lavalkiria/design_system/tile/home_tile.dart';
import 'package:app_lavalkiria/presenter/home/page/home_controller.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  final HomeController controller;

  const HomeContent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) => ListenableBuilder(
      listenable: controller.list,
          builder: (context, value) => SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  spacing: 8,
                  children: List.generate(controller.list.data.length, (index) => HomeTile(
                    title: controller.list.data[index]['title'],
                    subtitle: controller.list.data[index]['description'],
                    price: controller.list.data[index]['price'],
                    imageUrl: controller.list.data[index]['image'],
                    onTap: () => ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Indisponível no protótipo'))),
                  )),
                ),
            ),
          ),
      );
}
