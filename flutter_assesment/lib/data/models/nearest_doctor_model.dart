import 'package:flutter_assesment/data/models/appointment_model.dart';
import 'package:flutter_assesment/data/models/doctor_model.dart';

class NearestDoctorModel {
  final DoctorModel doctor;
  final bool isFavorite;
  final double distanceAway;
  final AppointmentTime availability;

  NearestDoctorModel({
    required this.doctor,
    this.isFavorite = false,
    required this.distanceAway,
    required this.availability,
  });

  NearestDoctorModel copyWith({
    DoctorModel? doctor,
    bool? isFavorite,
    double? distanceAway,
    AppointmentTime? availability,
  }) {
    return NearestDoctorModel(
      doctor: doctor ?? this.doctor,
      isFavorite: isFavorite ?? this.isFavorite,
      distanceAway: distanceAway ?? this.distanceAway,
      availability: availability ?? this.availability,
    );
  }
}
