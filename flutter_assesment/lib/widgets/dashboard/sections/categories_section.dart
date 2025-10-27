import 'package:flutter/material.dart';
import 'package:flutter_assesment/data/mock_data.dart';
import 'package:flutter_assesment/widgets/dashboard/category_item.dart';
import 'package:flutter_assesment/widgets/dashboard/section_heading.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 25,
      children: [
        SectionHeading(title: 'Categories'),
        _categories(),
      ],
    );
  }

  // _sectionHeading(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Text(
  //         'Categories',
  //         style: Theme.of(
  //           context,
  //         ).textTheme.titleLarge!.copyWith(height: 1.5, letterSpacing: 0.5),
  //       ),

  //       Text(
  //         'See All >',
  //         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
  //           color: AppColors.primaryBlue,
  //           letterSpacing: 0.5,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _categories() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final paintableWidth = (constraints.maxWidth - 15 * 3) / 4;
        return Wrap(
          runSpacing: 15,
          spacing: 15,
          alignment: WrapAlignment.start,
          children: mockCategories.map((category) {
            return CategoryItem(
              icon: category.icon,
              title: category.name,
              width: paintableWidth,
            );
          }).toList(),
        );
      },
    );
  }
}
