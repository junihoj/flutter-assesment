import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/core/constants/app_icons.dart';
import 'package:flutter_assesment/core/constants/app_images.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20.13, bottom: 19.87),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.lightBlue,
      ),
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_dotorPill(), _dateAndAction()],
      ),
    );
  }

  Widget _dotorPill() {
    return Builder(
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(10),
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              radius: 18,
              foregroundImage: AssetImage(AppImages.jason),
            ),
            title: Text(
              'Jason Smith',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(height: 1.4),
            ),
            subtitle: Text(
              'Dentist • ABC Medical Center',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                height: 1.4,
                color: AppColors.grey,
              ),
            ),
            horizontalTitleGap: 10,
          ),
        );
      },
    );
  }

  Widget _dateAndAction() {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            // date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                _iconAndText(
                  context: context,
                  icon: AppIcons.calendar,
                  text: '7 October 2021',
                ),
                _iconAndText(
                  context: context,
                  icon: AppIcons.clock,
                  text: '08:00 AM -10:00 AM',
                ),
              ],
            ),

            CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppIcons.send, width: 24, height: 24),
            ),
          ],
        );
      },
    );
  }

  Widget _iconAndText({
    required BuildContext context,
    double spacing = 12,
    required String icon,
    required String text,
    TextStyle? style,
  }) {
    return Row(
      spacing: spacing,
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        Text(
          text,
          style:
              style ??
              Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
        ),
      ],
    );
  }
}
