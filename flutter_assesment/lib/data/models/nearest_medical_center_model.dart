import 'package:flutter_assesment/data/models/medical_center_model.dart';

class NearestMedicalCenterModel {
  final MedicalCenterModel medicalCenter;
  final bool isFavorite;

  NearestMedicalCenterModel({
    required this.medicalCenter,
    this.isFavorite = false,
  });

  NearestMedicalCenterModel copyWith({
    MedicalCenterModel? medicalCenter,
    bool? isFavorite,
  }) {
    return NearestMedicalCenterModel(
      medicalCenter: medicalCenter ?? this.medicalCenter,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
