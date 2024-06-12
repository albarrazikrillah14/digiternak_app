import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/cage/request/cage_request.dart';
import 'package:digiternak_app/data/model/cage/response/cage_response.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class CageRepository {
  final ApiService service;

  CageRepository({required this.service});

  Future<BaseModel> createCage(CageRequest request) async {
    final result = await service.createCage(request);
    return result;
  }

  Future<CagesResponse> getCages() async {
    final result = await service.getCages();

    return result;
  }

  Future<CageResponse> getCageById(int id) async {
    final result = await service.getCageById(id);

    return result;
  }
}
