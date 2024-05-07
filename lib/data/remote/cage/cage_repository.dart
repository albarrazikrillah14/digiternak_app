import 'package:digiternak_app/data/model/kandang/request/kandang_request.dart';
import 'package:digiternak_app/data/model/kandang/response/create/create_kandang_response.dart';
import 'package:digiternak_app/data/model/kandang/response/kandang_response.dart';
import 'package:digiternak_app/data/model/kandang/response/result/kandang_result.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class CageRepository {
  final ApiService service;

  CageRepository({required this.service});

  Future<CreateKandangResponse> createKandang(KandangRequest request) async {
    final result = await service.createKandang(request);
    return result;
  }

  Future<KandangResponse> getAllCage() async {
    final result = await service.getKandang();

    return result;
  }

  Future<KandangResult> getCageById(int id) async {
    final result = await service.getKandangById(id);

    return result;
  }
}
