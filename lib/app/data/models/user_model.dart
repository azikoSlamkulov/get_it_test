import '../../domain/etities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    final int? id,
    final String? name,
  }) : super(
          id: id,
          name: name,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int,
        name: json['name'] as String,
      );

  factory UserModel.fromCacheJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int,
        name: json['name'] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? '',
        "name": name ?? '',
      };

  Map<String, dynamic> toCacheJson() => {
        "id": id ?? '',
        "name": name ?? '',
      };
}
