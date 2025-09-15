class AppUser {
  final String uid;
  final String? email;
  final String? displayName;
  final Map<String, dynamic>? personalization;

  AppUser({
    required this.uid,
    this.email,
    this.displayName,
    this.personalization,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      uid: json['uid'],
      email: json['email'],
      displayName: json['displayName'],
      personalization: json['personalization'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'personalization': personalization,
    };
  }
}
