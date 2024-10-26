import 'package:furniture_shop_app/domain/entities/user_entity.dart';

class UserDataModel extends UserEntity {
  const UserDataModel({
    super.name,
    super.email,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    map['name'] = name;
    map['email'] = email;

    return map;
  }
}
