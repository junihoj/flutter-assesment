import 'package:flutter/material.dart';
import 'package:flutter_assesment/data/mock_data.dart';
import 'package:flutter_assesment/widgets/dashboard/nearest_doctor_card.dart';
import 'package:flutter_assesment/widgets/dashboard/section_heading.dart';

class NearestDoctorsSection extends StatelessWidget {
  const NearestDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 27,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: 'Nearest Doctors'),
        _nearestDoctorsItems(),
      ],
    );
  }

  Widget _nearestDoctorsItems() {
    return Column(
      spacing: 15,
      mainAxisSize: MainAxisSize.min,
      children: nearestDoctors.map((nearestDoctor) {
        return NearestDoctorCard(nearestDoctor: nearestDoctor);
      }).toList(),
    );
  }
}
