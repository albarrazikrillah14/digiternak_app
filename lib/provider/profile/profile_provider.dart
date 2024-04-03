import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  late final ResultState _state = ResultState.noData;
  late bool _error;
  final String _message = 'Error Terjadi';

  ResultState get state => _state;
  bool get error => _error;
  String get message => _message;
}
