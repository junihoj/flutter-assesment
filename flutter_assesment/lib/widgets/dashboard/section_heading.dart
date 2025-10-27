import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';

class SectionHeading extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const SectionHeading({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(height: 1.5, letterSpacing: 0.5),
        ),

        GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              Text(
                'See All',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryBlue,
                  letterSpacing: 0.5,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.primaryBlue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
