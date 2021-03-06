import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String email;

  const User({
    required this.name,
    required this.email,
  });

  @override
  List<Object> get props => [name, email];

  User copyWith({
    String? name,
    String? email,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  @override
  String toString() => 'User(name: $name, email: $email)';
}
