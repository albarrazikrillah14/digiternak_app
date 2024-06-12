import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/cage/request/cage_request.dart';
import 'package:digiternak_app/data/model/cage/response/cage_response.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/remote/cage/cage_repository.dart';
import 'package:flutter/material.dart';

class CageProvider extends ChangeNotifier {
  final CageRepository repository;

  CageProvider({required this.repository});

  late CageResponse? _cage;
  late ResultState? _stateCage = ResultState.noData;
  late CagesResponse? _cages = null;
  late ResultState _stateCages = ResultState.noData;
  late ResultState _state = ResultState.noData;
  late bool _error;
  late String _message = 'Error Terjadi';
  late BaseModel _response;

  CageResponse? get cage => _cage;
  ResultState? get stateCage => _stateCage;
  ResultState get stateCages => _stateCages;
  ResultState get state => _state;
  bool get error => _error;
  String get message => _message;
  BaseModel get response => _response;
  CagesResponse? get cages => _cages;

  Future<BaseModel> createCage(CageRequest request) async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await repository.createCage(request);
    _response = result;
    notifyListeners();

    if (!(result.error ?? false)) {
      _state = ResultState.hasData;
      await getCages();
    } else {
      _state = ResultState.error;
    }
    _message = result.details?[0] ?? "";
    notifyListeners();

    if (result.status == 401) {
      _state = ResultState.unauthorized;
    }

    return result;
  }

  void setState() {
    _state = ResultState.noData;
    notifyListeners();
  }

  Future<void> getCages() async {
    _stateCages = ResultState.loading;
    notifyListeners();

    final result = await repository.getCages();

    if (result.data?.isEmpty ?? true) {
      _stateCages = ResultState.noData;
    } else {
      _cages = result;
      _stateCages = ResultState.hasData;
    }

    if (result.status == 401) {
      _stateCages = ResultState.unauthorized;
    }

    if (result.error == true) {
      _stateCages = ResultState.error;
      _message = result.message ?? "";
    }
    notifyListeners();
  }

  Future<void> getCageById(int id) async {
    _stateCage = ResultState.loading;
    notifyListeners();

    final result = await repository.getCageById(id);

    if (result.name?.isNotEmpty ?? true) {
      _cage = result;
      _stateCage = ResultState.hasData;
    } else {
      _message = "Gagal Memuat Data";
      _stateCage = ResultState.error;
    }

    if (result.status == 401) {
      _stateCage = ResultState.unauthorized;
    }
    notifyListeners();
  }

  Future<void> deleteCageById(int id) async {}
}
