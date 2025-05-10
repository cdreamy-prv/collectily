class User {
  final int? id; // Primäre ID zuerst
  final String displayName; // Wichtigstes Anzeigenfeld direkt danach
  final String? userName; // Benutzername (optional)
  final String? email; // Kontaktinfo
  final String?
  password; // Zugangsdaten (optional, nicht unbedingt im Modell speichern!)
  final String? imageUrl; // Medieninfo
  final String createdAt; // Zeitliche Metadaten
  final String? updatedAt;

  User({
    this.id,
    required this.displayName,
    this.userName,
    this.email,
    this.password,
    this.imageUrl,
    required this.createdAt,
    this.updatedAt,
  });

  User copyWith({
    int? id,
    String? displayName,
    String? userName,
    String? email,
    String? password,
    String? imageUrl,
    String? createdAt,
    String? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int?,
      displayName: json['display_name'] as String,
      userName: json['user_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      imageUrl: json['image_url'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'display_name': displayName,
      'user_name': userName,
      'email': email,
      'password': password,
      'image_url': imageUrl,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  @override
  String toString() {
    return 'User(id: $id, displayName: $displayName, userName: $userName, email: $email, password: $password, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.displayName == displayName &&
        other.userName == userName &&
        other.email == email &&
        other.password == password &&
        other.imageUrl == imageUrl &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
