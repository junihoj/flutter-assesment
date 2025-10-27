import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/core/constants/app_icons.dart';
import 'package:flutter_svg/svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 50),
      child: Column(
        spacing: 8,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.accentBlue,
            ),
            child: SvgPicture.asset(AppIcons.shield),
          ),
          SizedBox(
            width: size.width * .8,
            child: Text(
              "Information shared via forms is encrypted and can only be viewed by those you share it with.",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.white,
                height: 1.6875,
                fontSize: 18,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
