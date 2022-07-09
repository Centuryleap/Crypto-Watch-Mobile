import 'package:cryptowatch/core/coingeckomodels/cg_data_model.dart';
import 'package:hive/hive.dart';

part 'cg_list_coins.g.dart';

@HiveType(typeId: 1)
class CoinGeckoList {
  @HiveField(0)
  List<CoinGeckoDataModel> cg_dataModel;

  CoinGeckoList({
    required this.cg_dataModel,
  });

  factory CoinGeckoList.fromJson(List<dynamic> dataList) {
    List<CoinGeckoDataModel> cg_dataModelList =
        dataList.map((e) => CoinGeckoDataModel.fromJson(e)).toList();
    return CoinGeckoList(cg_dataModel: cg_dataModelList);
  }

  CoinGeckoList.withError(String eerroor) : cg_dataModel = [];
}
