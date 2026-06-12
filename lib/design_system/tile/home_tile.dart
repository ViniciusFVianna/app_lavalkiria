import 'package:app_lavalkiria/design_system/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String imageUrl;
  final VoidCallback onTap;
  const HomeTile({super.key, required this.title, required this.subtitle, required this.price, required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: .start,
          children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(width: 2,),
          Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .start,
            spacing: 4,
            children: [
              Text(title,
                softWrap: true,
                style: TextStyle(
                  color: AppColors.darkPrimaryDark,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                width: 250,
                child: Text(
                  subtitle,
                  softWrap: true,
                  style: TextStyle(
                    color: AppColors.darkPrimaryDark,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),),
              ),
              Text(price,
                softWrap: true,
                style: TextStyle(
                  color: AppColors.darkPrimaryDark,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),),
            ],
          )
        ],),
      ),
    ),
  );
}
