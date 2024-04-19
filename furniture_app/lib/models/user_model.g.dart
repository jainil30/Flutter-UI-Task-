// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(fullName: '', email: '', password: '', profilePicture: '', isOnline: false)
      .._fullName = fields[0] as String
      .._email = fields[1] as String
      .._password = fields[2] as String
      .._profilePicture = fields[3] as String
      .._isOnline = fields[4] as bool;
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj._fullName)
      ..writeByte(1)
      ..write(obj._email)
      ..writeByte(2)
      ..write(obj._password)
      ..writeByte(3)
      ..write(obj._profilePicture)
      ..writeByte(4)
      ..write(obj._isOnline);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
