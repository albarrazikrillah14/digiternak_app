import 'package:digiternak_app/data/model/catatan/response/all_catatan_response.dart';
import 'package:digiternak_app/data/model/kandang/response/kandang_response.dart';
import 'package:digiternak_app/data/model/livestock/response/all_livestock/all_livestock_response.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class HomeRepository {
  final ApiService service;

  HomeRepository({required this.service});

  Future<KandangResponse> getKandang() async {
    return await service.getKandang();
  }

  Future<AllCatatanResponse> getAllCatatanData() async {
    return await service.getAllCatatanData();
  }

  Future<AllLivestockResponse> getAllLivestock() async {
    return await service.getAllLivestock();
  }

  Future<LivestockResponse> getLivestockByVID(String vid) async {
    return await service.getLivestockByVID(vid);
  }
}
