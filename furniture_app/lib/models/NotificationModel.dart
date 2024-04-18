/// title : "Your order 3 summery green chiar has been shipped!"
/// icon : "IconsConstants.NOTIFICATION_MENU_DEFAULT_ICON"
/// subtitle : "16 days ago"
/// isDismissed : false
/*
  Created By : Jainil Dalwadi
  Purpose : Notifications Item Model
 */
class NotificationModel {
  NotificationModel({
    String? title,
    String? icon,
    String? subtitle,
    bool? isDismissed,
  }) {
    _title = title;
    _icon = icon;
    _subtitle = subtitle;
    _isDismissed = isDismissed;
  }

  NotificationModel.fromJson(dynamic json) {
    _title = json['title'];
    _icon = json['icon'];
    _subtitle = json['subtitle'];
    _isDismissed = json['isDismissed'];
  }
  String? _title;
  String? _icon;
  String? _subtitle;
  bool? _isDismissed;
  NotificationModel copyWith({
    String? title,
    String? icon,
    String? subtitle,
    bool? isDismissed,
  }) =>
      NotificationModel(
        title: title ?? _title,
        icon: icon ?? _icon,
        subtitle: subtitle ?? _subtitle,
        isDismissed: isDismissed ?? _isDismissed,
      );
  String? get title => _title;
  String? get icon => _icon;
  String? get subtitle => _subtitle;
  bool? get isDismissed => _isDismissed;

  set title(String? value) {
    _title = value;
  }

  set icon(String? value) {
    _icon = value;
  }

  set subtitle(String? value) {
    _subtitle = value;
  }

  set isDismissed(bool? value) {
    _isDismissed = value;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['icon'] = _icon;
    map['subtitle'] = _subtitle;
    map['isDismissed'] = _isDismissed;
    return map;
  }
}
