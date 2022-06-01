import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int? id;
  final String? name;

  const UserEntity({
    this.id,
    this.name,
  });

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
