// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cg_list_coins.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoinGeckoListAdapter extends TypeAdapter<CoinGeckoList> {
  @override
  final int typeId = 1;

  @override
  CoinGeckoList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoinGeckoList(
      cg_dataModel: (fields[0] as List).cast<CoinGeckoDataModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, CoinGeckoList obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.cg_dataModel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoinGeckoListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
