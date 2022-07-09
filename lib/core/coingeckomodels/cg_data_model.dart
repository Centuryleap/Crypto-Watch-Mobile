import 'package:cryptowatch/core/coingeckomodels/cg_sparkline_price.dart';
import 'package:hive/hive.dart';

part 'cg_data_model.g.dart';

@HiveType(typeId: 2)
class CoinGeckoDataModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String symbol;
  @HiveField(2)
  String name;
  @HiveField(3)
  String image;
  @HiveField(4)
  num current_price;
  @HiveField(5)
  num market_cap;
  @HiveField(6)
  num market_cap_rank;
  @HiveField(7)
  num total_volume;
  @HiveField(8)
  num high_24h;
  @HiveField(9)
  num low_24h;
  @HiveField(10)
  num price_change_24h;
  @HiveField(11)
  num price_change_percentage_24h;
  @HiveField(12)
  num market_cap_change_24h;
  @HiveField(13)
  num market_cap_change_percentage_24h;
  @HiveField(14)
  num circulating_supply;
  @HiveField(15)
  num total_supply;
  @HiveField(16)
  num max_supply;
  @HiveField(17)
  num ath;
  @HiveField(18)
  num ath_change_percentage;
  @HiveField(19)
  String ath_date;
  @HiveField(20)
  num atl;
  @HiveField(21)
  num atl_change_percentage;
  @HiveField(22)
  String atl_date;
  // SparklinePrice sparkline_in_7d;
  @HiveField(23)
  num price_change_percentage_1h_in_currency;
  @HiveField(24)
  num price_change_percentage_7d_in_currency;

  CoinGeckoDataModel(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      required this.current_price,
      required this.market_cap,
      required this.market_cap_rank,
      required this.total_volume,
      required this.high_24h,
      required this.low_24h,
      required this.price_change_24h,
      required this.price_change_percentage_24h,
      required this.market_cap_change_24h,
      required this.market_cap_change_percentage_24h,
      required this.circulating_supply,
      required this.total_supply,
      required this.max_supply,
      required this.ath,
      required this.ath_change_percentage,
      required this.ath_date,
      required this.atl,
      required this.atl_change_percentage,
      required this.atl_date,
      //required this.sparkline_in_7d,
      required this.price_change_percentage_1h_in_currency,
      required this.price_change_percentage_7d_in_currency});

  factory CoinGeckoDataModel.fromJson(Map<String, dynamic> json) {
    return CoinGeckoDataModel(
        id: json['id'],
        symbol: json['symbol'],
        name: json['name'],
        image: json['image'],
        current_price: json['current_price'],
        market_cap: json['market_cap'],
        market_cap_rank: json['market_cap_rank'],
        total_volume: json['total_volume'],
        high_24h: json['high_24h'],
        low_24h: json['low_24h'],
        price_change_24h: json['price_change_24h'],
        price_change_percentage_24h: json['price_change_percentage_24h'],
        market_cap_change_24h: json['market_cap_change_24h'],
        market_cap_change_percentage_24h:
            json['market_cap_change_percentage_24h'],
        circulating_supply: json['circulating_supply'],
        total_supply: json['total_supply'] ?? 0,
        max_supply: json['max_supply'] ?? 0,
        ath: json['ath'],
        ath_change_percentage: json['ath_change_percentage'],
        ath_date: json['ath_date'],
        atl: json['atl'],
        atl_change_percentage: json['atl_change_percentage'],
        atl_date: json['atl_date'],
     //   sparkline_in_7d: SparklinePrice.fromJson(json['sparkline_in_7d']),
        price_change_percentage_1h_in_currency:
            json['price_change_percentage_7d_in_currency'],
        price_change_percentage_7d_in_currency:
            json['price_change_percentage_7d_in_currency']);
  }
}
