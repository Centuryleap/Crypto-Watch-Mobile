import 'data_model.dart';
import 'status_model.dart';

class BigDataModel {
  final StatusModel statusModel;
  final List<DataModel> dataModel;

  BigDataModel({
    required this.statusModel,
    required this.dataModel,
  });

  factory BigDataModel.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<DataModel> dataModelList =
        dataList.map((e) => DataModel.fromJson(e)).toList();
    return BigDataModel(statusModel: StatusModel.fromJson(json['status']) , dataModel: dataModelList);
  }

  BigDataModel.withError(String eerroor)
      : statusModel = StatusModel(eerroor, 0, eerroor, 0, 0, eerroor, 0),
        dataModel = [];
}
