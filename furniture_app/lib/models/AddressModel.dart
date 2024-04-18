/// addressId : 1
/// addressType : "Home Address"
/// phoneNumber : "(269)- 444-6853"
/// address : "Road Number 5649 Akali"
/*
  Created By : Jainil Dalwadi
  Purpose : Address Model
 */
class AddressModel {
  AddressModel({
    num? addressId,
    String? addressType,
    String? phoneNumber,
    String? address,
  }) {
    _addressId = addressId;
    _addressType = addressType;
    _phoneNumber = phoneNumber;
    _address = address;
  }

  AddressModel.fromJson(dynamic json) {
    _addressId = json['addressId'];
    _addressType = json['addressType'];
    _phoneNumber = json['phoneNumber'];
    _address = json['address'];
  }
  num? _addressId;
  String? _addressType;
  String? _phoneNumber;
  String? _address;
  AddressModel copyWith({
    num? addressId,
    String? addressType,
    String? phoneNumber,
    String? address,
  }) =>
      AddressModel(
        addressId: addressId ?? _addressId,
        addressType: addressType ?? _addressType,
        phoneNumber: phoneNumber ?? _phoneNumber,
        address: address ?? _address,
      );
  num? get addressId => _addressId;
  String? get addressType => _addressType;
  String? get phoneNumber => _phoneNumber;
  String? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['addressId'] = _addressId;
    map['addressType'] = _addressType;
    map['phoneNumber'] = _phoneNumber;
    map['address'] = _address;
    return map;
  }
}
