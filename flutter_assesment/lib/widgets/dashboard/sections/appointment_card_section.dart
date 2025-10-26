import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/core/constants/app_icons.dart';
import 'package:flutter_assesment/widgets/dashboard/appointment_card.dart';
import 'package:flutter_assesment/widgets/dashboard/book_appointment_card.dart';
import 'package:flutter_assesment/widgets/dashboard/indicator.dart';

class AppointmentCardSection extends StatefulWidget {
  const AppointmentCardSection({super.key});

  @override
  State<AppointmentCardSection> createState() => _AppointmentCardSectionState();
}

class _AppointmentCardSectionState extends State<AppointmentCardSection> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 15,
      children: [
        SizedBox(
          height: 220,
          child: PageView.builder(
            itemCount: 3,
            physics: BouncingScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: AppointmentCard(),
              );
            },
          ),
        ),
        Indicator(currentStep: currentPage + 1),

        _bookAppointmentSection(),
      ],
    );
  }

  _bookAppointmentSection() {
    return Row(
      spacing: 15,
      children: [
        Expanded(
          child: BookAppointmentCard(
            backgroundColor: AppColors.lightPink,
            title: 'Book Doctor Apppointment',
            description: 'Find a Doctor or Specialist',
            iconBackgroundColor: AppColors.lightPurple,
            iconBorderColor: AppColors.purpleBorder,
            icon: AppIcons.bookDoctorAppointment,
          ),
        ),
        Expanded(
          child: BookAppointmentCard(
            backgroundColor: AppColors.lightGreen,
            title: 'Book Doctor Apppointment',
            description: 'Find a Doctor or Specialist',
            iconBackgroundColor: AppColors.lightGreen200,
            iconBorderColor: AppColors.greenBorder,
            icon: AppIcons.bookHospitalAppointment,
          ),
        ),
      ],
    );
  }
}
