class User {
  final String bio;
  final String avatarUrl;

  User({required this.bio, required this.avatarUrl});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      bio: json['bio'],
      avatarUrl: json['avatarUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bio'] = bio;
    data['avatarUrl'] = avatarUrl;
    return data;
  }
}
