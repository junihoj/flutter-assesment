import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookAppointmentCard extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String description;
  final Color iconBackgroundColor;
  final Color iconBorderColor;
  final String icon;
  const BookAppointmentCard({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.description,
    required this.iconBackgroundColor,
    required this.iconBorderColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
      ),

      padding: EdgeInsets.all(12),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // icon
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: iconBorderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              width: 42,
              height: 42,
              child: Center(child: SvgPicture.asset(icon)),
            ),
          ),

          // text-section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                  height: 1.2,
                ),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
