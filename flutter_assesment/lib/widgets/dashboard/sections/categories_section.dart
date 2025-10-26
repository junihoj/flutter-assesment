import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 25,
      children: [_sectionHeading(context)],
    );
  }

  _sectionHeading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(height: 1.5, letterSpacing: 0.5),
        ),

        Text(
          'See All >',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: AppColors.primaryBlue,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }

  Widget _categories() {
    return Wrap();
  }
}
