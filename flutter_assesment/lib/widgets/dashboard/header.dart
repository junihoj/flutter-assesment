import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/core/utils/responsiveness/app_responsiveness.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Center(
        child: Text(
          'Medical Center',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: ResponsiveSize.fontSize(23),
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
