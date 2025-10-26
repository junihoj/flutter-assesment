import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/core/constants/app_icons.dart';
import 'package:flutter_assesment/core/extensions/material_property_extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(),
            padding: EdgeInsets.all(0),
            height: 64,
            child: SearchBar(
              trailing: [SvgPicture.asset(AppIcons.filterIcon)],
              backgroundColor: AppColors.ash.asWidgetState,
              padding: EdgeInsets.symmetric(horizontal: 20).asWidgetState,
              elevation: 0.0.asWidgetState,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ).asWidgetState,

              hintText: 'Search',
              hintStyle: Theme.of(context).textTheme.bodyMedium!
                  .copyWith(color: const Color(0xFF333333))
                  .asWidgetState,
              leading: SvgPicture.asset(
                AppIcons.searchIcon,
                height: 24,
                width: 24,
              ),
            ),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppColors.ash,
          ),
          width: 60,
          height: 64,
          child: Center(
            child: SvgPicture.asset(
              AppIcons.searchLocationIcon,
              width: 32,
              height: 32,
            ),
          ),
        ),
      ],
    );
  }
}
