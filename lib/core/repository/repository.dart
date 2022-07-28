import 'package:cryptowatch/core/coingeckomodels/cg_list_coins.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

class Repository {
  static String mainUrl = 'https://pro-api.coinmarketcap.com/v1/';
  static String apiKey = '65b3ad7d-8909-4809-afe7-d78c263b039f';
  var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';

  Dio _dio = Dio();
  Box? box;
  List data = [];
  CoinGeckoList? coinGeckoList;

  

  //Method used to get a future of list of data of coins
  Future<CoinGeckoList> getCoins() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox('data');
    try {
      //  _dio.options.headers['X-CMC_PRO_API_KEY'] = apiKey;
      //  Response response = await _dio.get(currencyListingAPI);

      Response response = await _dio.get(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=1h%2C24h%2C7d%2C14d');

          coinGeckoList = CoinGeckoList.fromJson(response.data);

      await putData(coinGeckoList);

      return coinGeckoList!;
    } catch (SocketException) {
      print(SocketException);
      print('No internet');
     print(box?.getAt(0));
      coinGeckoList = box?.getAt(0);

      return coinGeckoList!;
    }
  }

  Future<void> updateCoins() async {
    try {
      Response response = await _dio.get(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=1h%2C24h%2C7d%2C14d');

      //await putData(CoinGeckoList.fromJson(response.data));
      coinGeckoList = CoinGeckoList.fromJson(response.data);
      //return CoinGeckoList.fromJson(response.data);
    } catch (SocketException) {
      print(SocketException);
      print('No internet');
    //  return CoinGeckoList.withError('');
    }
  }

  putData(data) async {
    await box?.clear();
    await box?.add(data);
    //await box?.put('key', data);
  }
}
