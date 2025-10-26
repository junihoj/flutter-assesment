import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/constants/app_colors.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Indicator extends StatelessWidget {
  final int currentStep;
  const Indicator({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: 3,
      currentStep: currentStep,
      selectedColor: AppColors.indicatorBlue,
      unselectedColor: AppColors.indicatorBlue.withValues(alpha: 0.2),
      padding: 10,
    );
  }
}
