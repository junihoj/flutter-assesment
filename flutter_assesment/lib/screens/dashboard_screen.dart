import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:flutter_assesment/widgets/dashboard/dashboard_widgets.dart';
import 'package:flutter_assesment/widgets/dashboard/sections/footer_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(children: [Header(), _buildBody(), FooterSection()]),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(26),
      ),
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 50, left: 20, right: 20, top: 10),

      child: Column(
        children: [
          SearchBarSection(),
          AppointmentCardSection(),
          CategoriesSection(),
          NearestDoctorsSection(),
          NearestMedicalCentersSection(),
        ],
      ),
    );
  }
}
