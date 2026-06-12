import 'package:flutter/material.dart';

import '../../../../design_system/theme/colors/app_colors.dart';

class PageDots extends StatelessWidget {
  final int page;
  final int pages;
  const PageDots({super.key, required this.page, required this.pages});

  @override
  Widget build(BuildContext context) => Row(
      children: List.generate(pages, (idx) => Container(
        width: idx != page ? 10 : 15,
        height: idx != page ? 10 : 15,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: idx == page ? AppColors.primaryBase : AppColors.primaryGray,
          borderRadius: BorderRadius.circular(50),
        ),
      )),
      );
}
