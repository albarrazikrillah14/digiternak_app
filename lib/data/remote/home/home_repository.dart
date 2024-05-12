import 'package:digiternak_app/data/model/notes/response/notes_response.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class HomeRepository {
  final ApiService service;

  HomeRepository({required this.service});

  Future<CagesResponse> getKandang() async {
    return await service.getKandang();
  }

  Future<NotesResponse> getAllCatatanData() async {
    return await service.getAllCatatanData();
  }

  Future<LivestockResponse> getAllLivestock() async {
    return await service.getAllLivestock();
  }

  Future<LivestockResponse> getLivestockByVID(String vid) async {
    return await service.getLivestockByVID(vid);
  }
}
