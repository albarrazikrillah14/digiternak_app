import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/bcs/request/bcs_request.dart';
import 'package:digiternak_app/data/model/bcs/response/bcs_response.dart';
import 'package:digiternak_app/data/model/bcs/response/create/create_bcs_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class BcsRepository {
  final ApiService service;

  BcsRepository({required this.service});

  Future<CreateBcsResponse> createBcsByLivestockId(
      BcsRequest request, int livestockId) async {
    return await service.createBcs(request, livestockId);
  }

  Future<CreateBcsResponse> editBcsById(BcsRequest request, int bcsId) async {
    return await service.editBcsById(request, bcsId);
  }

  Future<CreateBcsResponse> getBcsById(int bcsId) async {
    return await service.getBcsById(bcsId);
  }

  Future<BcsResponse> getBcsByLivestockId(int livestockId) async {
    return await service.getBcsByLivestockId(livestockId);
  }

  Future<BaseModel> deleteBcsById(int bcsId) async {
    return await service.deleteBcsById(bcsId);
  }
}
