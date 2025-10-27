import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  final String icon;
  final String title;
  final double? width;
  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.ash,
        borderRadius: BorderRadius.circular(14),
      ),
      width: width,
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 5,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(icon),
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(height: 1.33),
          ),
        ],
      ),
    );
  }
}
