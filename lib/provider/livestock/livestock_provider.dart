import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/livestock/request/livestock_request.dart';
import 'package:digiternak_app/data/model/livestock/response/create/create_livestock_response.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/remote/livestock/livestock_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class LivestockProvider extends ChangeNotifier {
  final LivestockRepository repository;

  late ResultState _updateState = ResultState.noData;
  late ResultState _uploadState = ResultState.noData;
  late ResultState _deletState = ResultState.noData;
  late LivestockResponse _allLivestock;
  late ResultState _stateAllLivestock = ResultState.noData;
  late CagesResponse _kandang;
  late CreateLivestockResponse _livestock;
  late ResultState _createState = ResultState.noData;
  late ResultState _kandangState = ResultState.noData;
  late BaseModel _updateResult;
  late String _message;

  ResultState get updateState => _updateState;
  ResultState get uploadState => _uploadState;
  ResultState get deleteState => _deletState;
  BaseModel get updateResult => _updateResult;
  LivestockResponse get allLivestock => _allLivestock;
  ResultState get stateAllLivestock => _stateAllLivestock;
  CagesResponse get kandang => _kandang;
  ResultState get createState => _createState;
  ResultState get kandangState => _kandangState;
  CreateLivestockResponse get livestock => _livestock;
  String get message => _message;

  //image
  XFile? imageFile;
  String? imagePath;

  LivestockProvider({required this.repository});

  Future<void> createLivestock(LivestockRequest request) async {
    _createState = ResultState.loading;
    notifyListeners();

    final result = await repository.createLivestock(request);

    if (result.error) {
      _createState = ResultState.error;
      _message = 'Ternak gagal ditambahkan';
    } else {
      _createState = ResultState.hasData;
      _livestock = result;
      await getLivestocks();
    }

    if (result.status == 401) {
      _createState = ResultState.unauthorized;
    }
    notifyListeners();
  }

  Future<void> getCages() async {
    _kandangState = ResultState.loading;
    notifyListeners();

    final result = await repository.getCages();
    if (result.data?.isEmpty ?? true) {
      _kandangState = ResultState.noData;
    } else {
      _kandang = result;
      _kandangState = ResultState.hasData;
    }

    if (result.status == 401) {
      _kandangState = ResultState.unauthorized;
    }
    notifyListeners();
  }

  void setKandangState() {
    _kandangState = ResultState.noData;
    notifyListeners();
  }

  Future<void> getLivestocks() async {
    _stateAllLivestock = ResultState.loading;
    notifyListeners();

    final result = await repository.getLivestocks();
    if (result.error == true) {
      _message = result.message ?? "";
      _stateAllLivestock = ResultState.error;
    } else {
      _stateAllLivestock = ResultState.hasData;
      _allLivestock = result;
    }
    notifyListeners();

    if (result.data!.isEmpty) {
      _stateAllLivestock = ResultState.noData;
      notifyListeners();
    }

    if (result.status == 401) {
      _stateAllLivestock = ResultState.unauthorized;
      notifyListeners();
    }
  }

  Future<void> deletLivestockById(int id) async {
    _deletState = ResultState.loading;
    notifyListeners();

    final result = await repository.deletLivestockById(id);

    if (result.error == true) {
      _message = "Gagal Menghapus Ternak";
      _deletState = ResultState.error;
    } else {
      _deletState = ResultState.hasData;
      _message = "Berhasil Menghapus Ternak";
      await getLivestocks();
    }
    notifyListeners();
    if (result.status == 401) {
      _deletState = ResultState.unauthorized;
    }

    notifyListeners();
  }

  Future<void> editLivestockById(
      LivestockRequest request, int livestockId) async {
    _updateState = ResultState.loading;
    notifyListeners();

    final result = await repository.editLivestockById(request, livestockId);

    if (result.error ?? true) {
      _message = result.message ?? "";
      _updateState = ResultState.error;
    } else {
      _message = result.message ?? "";
      _updateState = ResultState.hasData;
      await getLivestocks();
    }
    if (result.status == 401) {
      _updateState = ResultState.unauthorized;
    }
    notifyListeners();
  }

  void setDeleteState() {
    _deletState = ResultState.noData;
    notifyListeners();
  }

  void setUploadState() {
    _uploadState = ResultState.noData;
    notifyListeners();
  }
}
