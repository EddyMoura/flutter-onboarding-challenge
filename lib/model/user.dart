class User {
  final String name;
  final String bio;
  final String avatarUrl;

  User({required this.name, required this.bio, required this.avatarUrl});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      bio: json['bio'],
      avatarUrl: json['avatarUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['bio'] = bio;
    data['avatarUrl'] = avatarUrl;
    return data;
  }
}
