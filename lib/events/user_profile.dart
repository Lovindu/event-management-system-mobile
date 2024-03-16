class User {
  final String imagePath;
  final String name;
  final String email;
  final String address;
  final String contactno;

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.address,
    required this.contactno,
  });

  /*User copy({
    String? imagePath,
    String? name,
    String? email,
    String? address,
    String? contactno,
  }) =>
      User(
          imagePath: imagePath ?? this.imagePath,
          name: name ?? this.name,
          email: email ?? this.email,
          address: address ?? this.address,
          contactno: contactno ?? this.contactno);

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        address: json['address'],
        contactno: json['contactno'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'email': email,
        'address': address,
        'contactno': contactno,
      };*/
}
