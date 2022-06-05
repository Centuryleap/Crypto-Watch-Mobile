class UsdModel {
  final num prices;
  final num volume24h;
  final num percentageChange_1h;
  final num percentageChange_24h;
  final num percentageChange_7d;
  final num percentageChange_30d;
  final num percentageChange_60d;
  final num percentageChange_90d;
  final num marketCap;
  final String lastUpdated;

  UsdModel(
      {required this.prices,
      required this.volume24h,
      required this.percentageChange_1h,
      required this.percentageChange_24h,
      required this.percentageChange_7d,
      required this.percentageChange_30d,
      required this.percentageChange_60d,
      required this.percentageChange_90d,
      required this.marketCap,
      required this.lastUpdated});

  factory UsdModel.fromJson(Map<String, dynamic> json) {
    
    return UsdModel(
        prices: json['price'],
        volume24h: json['volume_24h'] ?? 0,
        percentageChange_1h: json['percent_change_1h']?? 0,
        percentageChange_24h: json['percent_change_24h']?? 0,
        percentageChange_7d: json['percent_change_7d']?? 0,
        percentageChange_30d: json['percent_change_7d']?? 0,
        percentageChange_60d: json['percent_change_30d']?? 0,
        percentageChange_90d: json['percent_change_90d']?? 0,
        marketCap: json['market_cap'] ?? 0,
        lastUpdated: json['last_updated']);
  }
}
