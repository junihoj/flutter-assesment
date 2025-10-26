class Doctor {
  final String name;
  final String specialty;
  final String image;
  final double rating;
  final String hospital;

  Doctor({
    required this.name,
    required this.specialty,
    required this.image,
    required this.rating,
    required this.hospital,
  });
}

List<Doctor> doctors = [
  Doctor(
    name: "Dr. Sarah Johnson",
    specialty: "Cardiologist",
    image: "assets/images/doctor1.png",
    rating: 4.9,
    hospital: "City Hospital",
  ),
  Doctor(
    name: "Dr. Michael Lee",
    specialty: "Neurologist",
    image: "assets/images/doctor2.png",
    rating: 4.7,
    hospital: "St. Mary’s Clinic",
  ),
];
