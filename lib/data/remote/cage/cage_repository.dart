import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/cage/request/cage_request.dart';
import 'package:digiternak_app/data/model/cage/response/cage_response.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/cage/response/result/cage_result.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class CageRepository {
  final ApiService service;

  CageRepository({required this.service});

  Future<BaseModel> createKandang(CageRequest request) async {
    final result = await service.createKandang(request);
    return result;
  }

  Future<CagesResponse> getAllCage() async {
    final result = await service.getKandang();

    return result;
  }

  Future<CageResponse> getCageById(int id) async {
    final result = await service.getKandangById(id);

    return result;
  }
}
