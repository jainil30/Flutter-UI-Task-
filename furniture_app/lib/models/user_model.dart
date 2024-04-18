import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  UserModel({
    required String fullName,
    required String email,
    required String password,
    required String profilePicture,
    required bool isOnline,
  })  : _fullName = fullName,
        _email = email,
        _password = password,
        _profilePicture = profilePicture,
        _isOnline = isOnline;

  UserModel.fromJson(Map<String, dynamic> json)
      : _fullName = json['fullName'],
        _email = json['email'],
        _password = json['password'],
        _profilePicture = json['profilePicture'],
        _isOnline = json['isOnline'];

  @HiveField(0)
  late String _fullName;

  @HiveField(1)
  late String _email;

  @HiveField(2)
  late String _password;

  @HiveField(3)
  late String _profilePicture;

  @HiveField(4)
  late bool _isOnline;

  UserModel copyWith({
    String? fullName,
    String? email,
    String? password,
    String? profilePicture,
    bool? isOnline,
  }) =>
      UserModel(
        fullName: fullName ?? _fullName,
        email: email ?? _email,
        password: password ?? _password,
        profilePicture: profilePicture ?? _profilePicture,
        isOnline: isOnline ?? _isOnline,
      );

  String get fullName => _fullName;
  String get email => _email;
  String get password => _password;
  String get profilePicture => _profilePicture;
  bool get isOnline => _isOnline;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fullName'] = _fullName;
    map['email'] = _email;
    map['password'] = _password;
    map['profilePicture'] = _profilePicture;
    map['isOnline'] = _isOnline;
    return map;
  }
}
