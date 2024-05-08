import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/kandang/request/kandang_request.dart';
import 'package:digiternak_app/data/model/kandang/response/create/create_kandang_response.dart';
import 'package:digiternak_app/data/model/kandang/response/kandang_response.dart';
import 'package:digiternak_app/data/model/kandang/response/result/kandang_result.dart';
import 'package:digiternak_app/data/remote/cage/cage_repository.dart';
import 'package:flutter/material.dart';

class CageProvider extends ChangeNotifier {
  final CageRepository repository;

  CageProvider({required this.repository});

  late KandangResult? _cage;
  late ResultState? _stateCage = ResultState.noData;
  late KandangResponse? _cages;
  late ResultState _stateCages = ResultState.noData;
  late ResultState _state = ResultState.noData;
  late bool _error;
  late String _message = 'Error Terjadi';
  late CreateKandangResponse _response;

  KandangResult? get cage => _cage;
  ResultState? get stateCage => _stateCage;
  ResultState get stateCages => _stateCages;
  ResultState get state => _state;
  bool get error => _error;
  String get message => _message;
  CreateKandangResponse get response => _response;
  KandangResponse? get cages => _cages;

  Future<CreateKandangResponse> createKandang(KandangRequest request) async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await repository.createKandang(request);
    _response = result;
    notifyListeners();

    if (!result.error) {
      _state = ResultState.hasData;
    } else {
      _state = ResultState.error;
    }
    _message = result.message ?? "";
    notifyListeners();

    if (result.status == 401) {
      _state = ResultState.unauthorized;
    }
    return result;
  }

  Future<void> getAllCage() async {
    _stateCages = ResultState.loading;
    notifyListeners();

    final result = await repository.getAllCage();

    if (result.data.isEmpty) {
      _stateCages = ResultState.noData;
    } else {
      _cages = result;
      _stateCages = ResultState.hasData;
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
