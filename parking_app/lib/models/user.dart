class User {
  const User({
    required this.id,
    required this.firstName,
    this.lastName,
    required this.email,
    this.role,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.isActive = true,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        role: json["role"],
        metadata: Map<String, dynamic>.from(json["metadata"] ?? {}),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        isActive: json["isActive"] ?? true,
      );

  final String id;
  final String firstName;
  final String? lastName;
  final String email;
  final String? role;
  final Map<String, dynamic>? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isActive;

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? role,
    dynamic metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isActive,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        role: role ?? this.role,
        metadata: metadata ?? this.metadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isActive: isActive ?? this.isActive,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "role": role,
        "metadata": metadata,
        "createdAt": createdAt.toUtc().toIso8601String(),
        "updatedAt": updatedAt.toUtc().toIso8601String(),
        "isActive": isActive,
      };
}
