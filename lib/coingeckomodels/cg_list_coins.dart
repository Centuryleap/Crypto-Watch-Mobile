import 'package:cryptowatch/coingeckomodels/cg_data_model.dart';

class CoinGeckoList {
  List<CoinGeckoDataModel> cg_dataModel;

  CoinGeckoList({
    required this.cg_dataModel,
  });

  factory CoinGeckoList.fromJson(List<dynamic> dataList){
    List<CoinGeckoDataModel> cg_dataModelList = 
        dataList.map((e) => CoinGeckoDataModel.fromJson(e)).toList();
    return CoinGeckoList(cg_dataModel: cg_dataModelList); 
  }

  CoinGeckoList.withError(String eerroor)
      :  cg_dataModel = [];
}
