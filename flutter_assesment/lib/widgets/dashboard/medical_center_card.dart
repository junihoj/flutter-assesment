import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/core/constants/app_images.dart';
import 'package:flutter_assesment/core/constants/shadows.dart';
import 'package:flutter_assesment/data/models/nearest_medical_center_model.dart';

class MedicalCenterCard extends StatefulWidget {
  final NearestMedicalCenterModel nearestMedicalCenter;
  const MedicalCenterCard({super.key, required this.nearestMedicalCenter});

  @override
  State<MedicalCenterCard> createState() => _MedicalCenterCardState();
}

class _MedicalCenterCardState extends State<MedicalCenterCard> {
  late NearestMedicalCenterModel _neaerestMedicalCenter;

  @override
  void initState() {
    _neaerestMedicalCenter = widget.nearestMedicalCenter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 243,
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
        boxShadow: [cardShadow],
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _medicalCenterImage(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _neaerestMedicalCenter.medicalCenter.name,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(height: 1.4),
              ),
              Text(
                _neaerestMedicalCenter.medicalCenter.address,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+2k Review",
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(color: AppColors.grey),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("4.8"),
                      Icon(Icons.star, color: AppColors.amber),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _medicalCenterImage() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 156,
          width: 137,
          clipBehavior: Clip.none,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.hospital),
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: InkWell(
            onTap: () {
              setState(() {
                _neaerestMedicalCenter = _neaerestMedicalCenter.copyWith(
                  isFavorite: !_neaerestMedicalCenter.isFavorite,
                );
              });
            },
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.black.withValues(alpha: 0.3),
              ),
              child: Icon(
                _neaerestMedicalCenter.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: _neaerestMedicalCenter.isFavorite
                    ? AppColors.favorite
                    : AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
