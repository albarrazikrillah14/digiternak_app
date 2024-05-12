import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/livestock/request/livestock_request.dart';
import 'package:digiternak_app/data/model/livestock/response/create/create_livestock_response.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class LivestockRepository {
  final ApiService service;

  LivestockRepository({required this.service});

  Future<CreateLivestockResponse> createLivestock(
      LivestockRequest request) async {
    return await service.createLivestock(request);
  }

  Future<CagesResponse> getKandang() async {
    return await service.getKandang();
  }

  Future<LivestockResponse> getAllLivestock() async {
    return await service.getAllLivestock();
  }

  Future<BaseModel> deletLivestock(int id) async {
    return await service.deleteLivestock(id);
  }

  Future<LivestockResponse> getLivestockByVid(String vid) async {
    return await service.getLivestockByVID(vid);
  }

  Future<BaseModel> editLivestockById(
      LivestockRequest request, int livestockId) async {
    return await service.editLivestockById(request, livestockId);
  }
}
