import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/core/constants/app_icons.dart';
import 'package:flutter_assesment/data/models/nearest_doctor_model.dart';
import 'package:flutter_svg/svg.dart';

class NearestDoctorCard extends StatefulWidget {
  final NearestDoctorModel nearestDoctor;
  const NearestDoctorCard({super.key, required this.nearestDoctor});

  @override
  State<NearestDoctorCard> createState() => _NearestDoctorCardState();
}

class _NearestDoctorCardState extends State<NearestDoctorCard> {
  late NearestDoctorModel _nearestDoctor;

  @override
  void initState() {
    super.initState();
    _nearestDoctor = widget.nearestDoctor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _doctorInfo(context: context),
          _appointmentInfo(),

          //horizontal rule
          _horizontalRule(),
          _footer(),
        ],
      ),
    );
  }

  Widget _doctorInfo({required BuildContext context}) {
    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(_nearestDoctor.doctor.image),
          radius: 21,
        ),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name
              Text(
                _nearestDoctor.doctor.name,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  height: 1.4,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //title and years of experience
              Text(
                '${_nearestDoctor.doctor.specialty} | ${_nearestDoctor.doctor.experience} Years',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(height: 5),
              //rating and reviews
              Row(
                children: [
                  Text(
                    _nearestDoctor.doctor.rating.toString(),
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.bluishGrey,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(width: 4),
                  // Icon(
                  //   Icons.star_outline_rounded,
                  //   color: AppColors.amber,
                  //   size: 16,
                  //   weight: 1,
                  // ),
                  SvgPicture.asset(AppIcons.rating, height: 16, width: 16),
                  SizedBox(width: 8),
                  Text(
                    "${_nearestDoctor.doctor.reviews} Reviews",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        IconButton(
          onPressed: () {
            setState(() {
              _nearestDoctor = _nearestDoctor.copyWith(
                isFavorite: !_nearestDoctor.isFavorite,
              );
            });
          },
          icon: Icon(
            _nearestDoctor.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: _nearestDoctor.isFavorite
                ? AppColors.favorite
                : AppColors.greyBorder,
            size: 20,
          ),
        ),
      ],
    );
  }

  Widget _appointmentInfo() {
    return Row(
      spacing: 25,
      children: [
        Row(
          spacing: 8,
          children: [
            SvgPicture.asset(
              AppIcons.calendar,
              height: 18,
              width: 18,
              color: AppColors.primaryBlue,
            ),
            Text(
              _nearestDoctor.availability.date,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.primaryBlue,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          spacing: 8,
          children: [
            SvgPicture.asset(
              AppIcons.clock,
              height: 18,
              width: 18,
              color: AppColors.primaryBlue,
            ),
            Text(
              _nearestDoctor.availability.timeRange,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.primaryBlue,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _horizontalRule() {
    return Divider(color: AppColors.divider, height: 1);
  }

  Widget _footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 5,
          children: [
            SvgPicture.asset(AppIcons.location, height: 18, width: 18),
            Text(
              "Horizon Medical Center",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                height: 1.4,
                color: AppColors.green500,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Text(
          "2km Away",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: AppColors.grey,
            height: 1.4,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
