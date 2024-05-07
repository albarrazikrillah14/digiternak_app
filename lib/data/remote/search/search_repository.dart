import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class SearchRepository {
  final ApiService service;

  SearchRepository({required this.service});

  Future<LivestockResponse> getLivestockByVID(String vid) async {
    return await service.getLivestockByVID(vid);
  }
}
