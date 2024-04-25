import '../common/boxes.dart';
import '../models/user_model.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : To store and retrive user's data from Hive DB
 */
class HiveService {
  final box = Boxes.getUsers();

  void addUser(String fullName, String email, String password) {
    box.add(
      UserModel(
          fullName: fullName,
          email: email,
          password: password,
          isOnline: false,
          profilePicture:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9oF0K9m3KZbFrOm1s3GTB57LyEpOX2Rd9jFy91GDrw&s"),
    );
  }

  List<UserModel> getAllUsers() {
    return box.values.toList();
  }

  void deleteUser(int index) {
    box.deleteAt(index);
  }

  void editUser(String fullName, String email, String password, int index) {
    print("Index:  $index");
    box.putAt(
        index,
        UserModel(
            fullName: fullName,
            email: email,
            password: password,
            isOnline: false,
            profilePicture:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9oF0K9m3KZbFrOm1s3GTB57LyEpOX2Rd9jFy91GDrw&s"));
  }

  List<UserModel> searchUserByEmail(String value) {
    if (value == "") {
      print("Value is null");
    }
    print("Searched value : $value");
    List<UserModel> searchedUser = box.values
        .where((user) => user.email.toLowerCase().contains(value.toLowerCase()))
        .toList();

    print("Searched Result ${searchedUser.toString()}");

    for (var user in searchedUser) {
      print("______________________");
      print("Name : ${user.fullName}");
      print("Email : ${user.email}");
      print("Password : ${user.password}");
      print("isOnline : ${user.isOnline}");
    }
    return searchedUser;
  }
}
