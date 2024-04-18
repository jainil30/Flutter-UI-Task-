import 'package:furniture_app/models/user_model.dart';
import 'package:hive/hive.dart';

import '../constants/strings.dart';

class Boxes {
  static Box<UserModel>? _usersBox;
  static Box<UserModel> getUsers() {
    if (_usersBox == null) {
      _usersBox = Hive.box<UserModel>(StringConstants.USER_MODEL_HIVE);
    }
    return _usersBox!;
  }
}
