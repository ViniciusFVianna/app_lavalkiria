import 'package:app_lavalkiria/design_system/images/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../design_system/theme/colors/app_colors.dart';


class PageContent extends StatelessWidget {
  final String title;
  final String description;
  final AppImages image;

  const PageContent({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: .center,
    mainAxisSize: .min,
    children: [
      SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 197,
          child: image.call()),
      SizedBox(height: 32,),
      Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.darkPrimaryDark,
              fontWeight: .w700,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 16,),
          Text(
            description,
            style: TextStyle(
              color: AppColors.darkPrimaryBase,
              fontWeight: .w400,
              fontSize: 14,
            ),
          )
        ],
      )
    ],
  );
}
