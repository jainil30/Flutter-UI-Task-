/// paymentId : 2
/// paymentMethodName : "Paypal"
/// icon : "IconsConstants.PAYPAL_ICON"

/*
  Created By : Jainil Dalwadi
 */
class PaymentMethodModel {
  PaymentMethodModel({
    num? paymentId,
    String? paymentMethodName,
    String? icon,
  }) {
    _paymentId = paymentId;
    _paymentMethodName = paymentMethodName;
    _icon = icon;
  }

  PaymentMethodModel.fromJson(dynamic json) {
    _paymentId = json['paymentId'];
    _paymentMethodName = json['paymentMethodName'];
    _icon = json['icon'];
  }
  num? _paymentId;
  String? _paymentMethodName;
  String? _icon;
  PaymentMethodModel copyWith({
    num? paymentId,
    String? paymentMethodName,
    String? icon,
  }) =>
      PaymentMethodModel(
        paymentId: paymentId ?? _paymentId,
        paymentMethodName: paymentMethodName ?? _paymentMethodName,
        icon: icon ?? _icon,
      );
  num? get paymentId => _paymentId;
  String? get paymentMethodName => _paymentMethodName;
  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['paymentId'] = _paymentId;
    map['paymentMethodName'] = _paymentMethodName;
    map['icon'] = _icon;
    return map;
  }
}
