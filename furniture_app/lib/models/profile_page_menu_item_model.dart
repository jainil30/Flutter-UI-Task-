/// title : "Profile"
/// icon : "assets/icons/profile_icon.svg"

/*
  Created By : Jainil Dalwadi
 */
class ProfilePageMenuItemModel {
  ProfilePageMenuItemModel({
    String? title,
    String? icon,
  }) {
    _title = title;
    _icon = icon;
  }

  ProfilePageMenuItemModel.fromJson(dynamic json) {
    _title = json['title'];
    _icon = json['icon'];
  }
  String? _title;
  String? _icon;
  ProfilePageMenuItemModel copyWith({
    String? title,
    String? icon,
  }) =>
      ProfilePageMenuItemModel(
        title: title ?? _title,
        icon: icon ?? _icon,
      );
  String? get title => _title;
  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['icon'] = _icon;
    return map;
  }
}
