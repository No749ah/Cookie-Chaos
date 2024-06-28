class User {
  final int? id;
  final String name;
  int aliens;
  DateTime spinDate;

  User({
    this.id,
    required this.name,
    required this.aliens,
    required this.spinDate,
  });

  factory User.fromMap(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    aliens: json['aliens'],
    spinDate: DateTime.parse(json['spinDate']),
  );

  Map<String, dynamic> toMap() {
    final map = {
      'name': name,
      'aliens': aliens,
      'spinDate': spinDate.toIso8601String()
    };
    if (id != null) {
      map['id'] = id as Object;
    }
    return map;
  }

  User copyWith({int? id, String? name, int? aliens, DateTime? spinDate}) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      aliens: aliens ?? this.aliens,
      spinDate: spinDate ?? this.spinDate
    );
  }
}
