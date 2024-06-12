import 'package:digiternak_app/data/model/notes/response/notes_response.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class HomeRepository {
  final ApiService service;

  HomeRepository({required this.service});

  Future<CagesResponse> getCages() async {
    return await service.getCages();
  }

  Future<NotesResponse> getNotes() async {
    return await service.getNotes();
  }

  Future<LivestockResponse> getLivestocks() async {
    return await service.getLivestocks();
  }

  Future<LivestockResponse> getLivestockByVID(String vid) async {
    return await service.getLivestockByVID(vid);
  }
}
