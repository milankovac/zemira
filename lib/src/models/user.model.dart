class UserModel{
  final String displayName;
  final String email;
  final String image;

  UserModel({
    required this.displayName,
    required this.email,
    required this.image
  });


  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
      'image': image,
    };
  }

   UserModel.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'] ?? '',
        email = json['email'] ?? '',
        image = json['image'] ?? '';
}