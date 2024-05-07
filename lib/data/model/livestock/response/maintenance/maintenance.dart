import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance.g.dart';
part 'maintenance.freezed.dart';

@freezed
class Maintenance with _$Maintenance {
  factory Maintenance({
    required int id,
    required String name,
  }) = _Maintenance;

  factory Maintenance.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceFromJson(json);
}
