import 'package:flutter_assesment/core/constants/app_icons.dart';
import 'package:flutter_assesment/core/constants/app_images.dart';
import 'package:flutter_assesment/data/models/appointment_model.dart';
import 'package:flutter_assesment/data/models/category_model.dart';
import 'package:flutter_assesment/data/models/doctor_model.dart';
import 'package:flutter_assesment/data/models/medical_center_model.dart';
import 'package:flutter_assesment/data/models/nearest_doctor_model.dart';
import 'package:flutter_assesment/data/models/nearest_medical_center_model.dart';

final List<CategoryModel> mockCategories = [
  CategoryModel(name: 'General', icon: AppIcons.stethoscope),
  CategoryModel(name: 'Heart', icon: AppIcons.heart),
  CategoryModel(name: 'Dentist', icon: AppIcons.teeth),
  CategoryModel(name: 'Skin', icon: AppIcons.dermis),
  CategoryModel(name: 'Stomach', icon: AppIcons.stomach),
  CategoryModel(name: 'Lung', icon: AppIcons.lungs),
  CategoryModel(name: 'Bone', icon: AppIcons.bone),
  CategoryModel(name: 'E.T.N', icon: AppIcons.ear),
];

List<DoctorModel> doctors = [
  DoctorModel(
    name: "Jason Smith",
    specialty: "Dentist",
    experience: 4,
    image: AppImages.jason,
    rating: 4.8,
    location: "ABC Medical Center",
    reviews: 40,
  ),
  DoctorModel(
    name: "Clark Mark",
    specialty: "Dentist",
    experience: 4,
    image: AppImages.clark,
    rating: 4.8,
    location: "Horizon Medical Center",
    reviews: 40,
  ),
  DoctorModel(
    name: "White Mond",
    specialty: "Neurologist",
    experience: 15,
    image: AppImages.white,
    rating: 4.9,
    location: "Horizon Medical Center",
    reviews: 440,
  ),
  DoctorModel(
    name: "Wilson Herwitz",
    specialty: "General Practitioner",
    experience: 10,
    image: AppImages.wilson,
    rating: 4.9,
    location: "Horizon Medical Center",
    reviews: 440,
  ),
];

List<NearestDoctorModel> nearestDoctors = [
  NearestDoctorModel(
    doctor: doctors[1],
    availability: AppointmentTime(
      date: 'Tomorrow',
      timeRange: '08:00 AM -10:00 AM',
    ),
    distanceAway: 2,
  ),
  NearestDoctorModel(
    doctor: doctors[2],
    availability: AppointmentTime(
      date: 'Tomorrow',
      timeRange: '08:00 AM -10:00 AM',
    ),
    distanceAway: 2,
  ),
  NearestDoctorModel(
    doctor: doctors[3],
    availability: AppointmentTime(
      date: 'Tomorrow',
      timeRange: '08:00 AM -10:00 AM',
    ),
    distanceAway: 2,
  ),
];

List<NearestMedicalCenterModel> nearestMedicalCenters = [
  NearestMedicalCenterModel(
    medicalCenter: MedicalCenterModel(
      name: 'Tyna Medical Center',
      address: 'Udomsuk, Bang Na',
      reviewCount: '2k',
      rating: 4.8,
      imageUrl: AppImages.hospital,
    ),
  ),
  NearestMedicalCenterModel(
    medicalCenter: MedicalCenterModel(
      name: 'Tyna Medical Center',
      address: 'Udomsuk, Bang Na',
      reviewCount: '2k',
      rating: 4.8,
      imageUrl: AppImages.hospital,
    ),
  ),
];
