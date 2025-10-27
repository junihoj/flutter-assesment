import 'package:flutter/material.dart';
import 'package:flutter_assesment/data/mock_data.dart';
import 'package:flutter_assesment/widgets/dashboard/medical_center_card.dart';
import 'package:flutter_assesment/widgets/dashboard/section_heading.dart';

class NearestMedicalCentersSection extends StatelessWidget {
  const NearestMedicalCentersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SectionHeading(title: 'Nearest Medical Center'),
        _medicalCenters(),
      ],
    );
  }

  Widget _medicalCenters() {
    return SizedBox(
      height: 270,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        itemCount: nearestMedicalCenters.length,
        itemBuilder: (context, index) {
          final nearestMedicalCenter = nearestMedicalCenters[index];
          return MedicalCenterCard(nearestMedicalCenter: nearestMedicalCenter);
        },
        separatorBuilder: (context, index) => SizedBox(width: 15),
      ),
    );
  }
}
