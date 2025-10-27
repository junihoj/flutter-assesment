class DoctorModel {
  final String name;
  final String specialty;
  final int experience;
  final String image;
  final double rating;
  final int reviews;
  final String location;

  DoctorModel({
    required this.experience,
    required this.name,
    required this.specialty,
    required this.image,
    required this.rating,
    required this.location,
    required this.reviews,
  });

  DoctorModel copyWith({
    String? name,
    String? specialty,
    int? experience,
    String? image,
    double? rating,
    int? reviews,
    String? location,
  }) {
    return DoctorModel(
      experience: experience ?? this.experience,
      name: name ?? this.name,
      specialty: specialty ?? this.specialty,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      location: location ?? this.location,
      reviews: reviews ?? this.reviews,
    );
  }
}
