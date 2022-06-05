class SparklinePrice {
  List<dynamic> sparkline_Price;

  SparklinePrice({
    required this.sparkline_Price,
  });

  factory SparklinePrice.fromJson(Map<String, dynamic> json){
    return SparklinePrice(sparkline_Price: json['price']);
  }

}
