import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/bcs/request/bcs_request.dart';
import 'package:digiternak_app/data/model/bcs/response/bcs_response.dart';
import 'package:digiternak_app/data/model/bcs/response/create/create_bcs_response.dart';
import 'package:digiternak_app/data/remote/bcs/bcs_repository.dart';
import 'package:flutter/material.dart';

class BcsProvider extends ChangeNotifier {
  final BcsRepository repository;

  BcsProvider({required this.repository});

  late ResultState? _createBcsState;
  late ResultState? _updateBcsState = ResultState.noData;
  late ResultState? _bcsState;
  late ResultState? _allBcsState;
  late ResultState? _deleteBcsState = ResultState.noData;
  late CreateBcsResponse _createData;
  late CreateBcsResponse _updateData;
  late CreateBcsResponse _bcsData;
  late BcsResponse _allBcsData;
  late BaseModel _deleteData;
  late String _errorMessage;

  ResultState? get createBcsState => _createBcsState;
  ResultState? get updateBcsState => _updateBcsState;
  ResultState? get bcsState => _bcsState;
  ResultState? get allBcsState => _allBcsState;
  ResultState? get deleteBcsState => _deleteBcsState;
  CreateBcsResponse get createData => _createData;
  CreateBcsResponse get updateData => _updateData;
  CreateBcsResponse get bcsData => _bcsData;
  BcsResponse get allBcsData => _allBcsData;
  BaseModel get deleteData => _deleteData;
  String get errorMessage => _errorMessage;

  void setCreateState() {
    _createBcsState = ResultState.noData;
    notifyListeners();
  }

  void setUpdateState() {
    _updateBcsState = ResultState.noData;
  }

  Future<void> createBcsByLivestockId(
      BcsRequest request, int livestockId) async {
    _createBcsState = ResultState.loading;
    notifyListeners();

    final result =
        await repository.createBcsByLivestockId(request, livestockId);

    if (result.error == true) {
      _errorMessage = result.message ?? "";
      _createBcsState = ResultState.error;
      if (result.code == 401) {
        _createBcsState = ResultState.unauthorized;
      }
    } else {
      _createBcsState = ResultState.hasData;
      _createData = result;
    }

    notifyListeners();
  }

  Future<void> updateBcsById(BcsRequest request, int bcsId) async {
    _updateBcsState = ResultState.loading;
    notifyListeners();

    final result = await repository.editBcsById(request, bcsId);

    if (result.error == true) {
      _errorMessage = result.message ?? "";
      _updateBcsState = ResultState.error;
      if (result.code == 401) {
        _updateBcsState = ResultState.unauthorized;
      }
    } else {
      _updateBcsState = ResultState.hasData;
      _updateData = result;
    }
    notifyListeners();
  }

  Future<void> getBcsById(int bcsId) async {
    _bcsState = ResultState.loading;
    notifyListeners();

    final result = await repository.getBcsById(bcsId);

    if (result.error == true) {
      _errorMessage = result.message ?? "";
      _bcsState = ResultState.error;

      if (result.code == 401) {
        _bcsState = ResultState.unauthorized;
      } else if (result.code == 404) {
        _bcsState = ResultState.noData;
      }
    } else {
      _bcsState = ResultState.hasData;
      _bcsData = result;
    }
  }

  Future<void> getBcsByLivestockId(int livestockId) async {
    _allBcsState = ResultState.loading;
    notifyListeners();

    final result = await repository.getBcsByLivestockId(livestockId);

    if (result.error == true) {
      _errorMessage = result.message ?? "";
      _allBcsState = ResultState.error;

      if (result.code == 401) {
        _allBcsState = ResultState.unauthorized;
      } else if (result.data!.isEmpty) {
        _allBcsState = ResultState.noData;
      }
    } else {
      _allBcsState = ResultState.hasData;
      _allBcsData = result;

      if (result.data!.isEmpty) {
        _allBcsState = ResultState.noData;
      }
    }
    notifyListeners();
  }

  Future<void> deleteBcsById(int bcsId) async {
    _deleteBcsState = ResultState.loading;
    notifyListeners();

    final result = await repository.deleteBcsById(bcsId);

    if (result.error == true) {
      _errorMessage = result.message ?? "";
      _deleteBcsState = ResultState.error;

      if (result.code == 401) {
        _deleteBcsState = ResultState.unauthorized;
      } else if (result.code == 404) {
        _deleteBcsState = ResultState.noData;
      }
    } else {
      _deleteBcsState = ResultState.hasData;
      _deleteData = result;
    }
  }
}
