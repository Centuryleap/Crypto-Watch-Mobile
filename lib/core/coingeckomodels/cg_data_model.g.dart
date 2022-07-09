// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cg_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoinGeckoDataModelAdapter extends TypeAdapter<CoinGeckoDataModel> {
  @override
  final int typeId = 2;

  @override
  CoinGeckoDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoinGeckoDataModel(
      id: fields[0] as String,
      symbol: fields[1] as String,
      name: fields[2] as String,
      image: fields[3] as String,
      current_price: fields[4] as num,
      market_cap: fields[5] as num,
      market_cap_rank: fields[6] as num,
      total_volume: fields[7] as num,
      high_24h: fields[8] as num,
      low_24h: fields[9] as num,
      price_change_24h: fields[10] as num,
      price_change_percentage_24h: fields[11] as num,
      market_cap_change_24h: fields[12] as num,
      market_cap_change_percentage_24h: fields[13] as num,
      circulating_supply: fields[14] as num,
      total_supply: fields[15] as num,
      max_supply: fields[16] as num,
      ath: fields[17] as num,
      ath_change_percentage: fields[18] as num,
      ath_date: fields[19] as String,
      atl: fields[20] as num,
      atl_change_percentage: fields[21] as num,
      atl_date: fields[22] as String,
      price_change_percentage_1h_in_currency: fields[23] as num,
      price_change_percentage_7d_in_currency: fields[24] as num,
    );
  }

  @override
  void write(BinaryWriter writer, CoinGeckoDataModel obj) {
    writer
      ..writeByte(25)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.symbol)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.current_price)
      ..writeByte(5)
      ..write(obj.market_cap)
      ..writeByte(6)
      ..write(obj.market_cap_rank)
      ..writeByte(7)
      ..write(obj.total_volume)
      ..writeByte(8)
      ..write(obj.high_24h)
      ..writeByte(9)
      ..write(obj.low_24h)
      ..writeByte(10)
      ..write(obj.price_change_24h)
      ..writeByte(11)
      ..write(obj.price_change_percentage_24h)
      ..writeByte(12)
      ..write(obj.market_cap_change_24h)
      ..writeByte(13)
      ..write(obj.market_cap_change_percentage_24h)
      ..writeByte(14)
      ..write(obj.circulating_supply)
      ..writeByte(15)
      ..write(obj.total_supply)
      ..writeByte(16)
      ..write(obj.max_supply)
      ..writeByte(17)
      ..write(obj.ath)
      ..writeByte(18)
      ..write(obj.ath_change_percentage)
      ..writeByte(19)
      ..write(obj.ath_date)
      ..writeByte(20)
      ..write(obj.atl)
      ..writeByte(21)
      ..write(obj.atl_change_percentage)
      ..writeByte(22)
      ..write(obj.atl_date)
      ..writeByte(23)
      ..write(obj.price_change_percentage_1h_in_currency)
      ..writeByte(24)
      ..write(obj.price_change_percentage_7d_in_currency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoinGeckoDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
