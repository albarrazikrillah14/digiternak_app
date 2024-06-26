import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.g.dart';
part 'source.freezed.dart';

@freezed
class Source with _$Source {
  factory Source({
    required int id,
    required String name,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
