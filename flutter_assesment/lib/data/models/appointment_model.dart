import 'package:flutter_assesment/data/models/doctor_model.dart';

class AppointmentTime {
  final String date;
  final String timeRange;

  AppointmentTime({required this.date, required this.timeRange});
}

class AppointmentModel {
  final DoctorModel doctor;
  final AppointmentTime appointmentTime;

  AppointmentModel({required this.doctor, required this.appointmentTime});
}
