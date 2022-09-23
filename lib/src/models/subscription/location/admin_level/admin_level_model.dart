import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_level_model.freezed.dart';
part 'admin_level_model.g.dart';

@Freezed()
class AdminModel with _$AdminModel {
  const factory AdminModel({
    @JsonKey(name: '6') required String state,
    @JsonKey(name: '8') required String city,
  }) = _AdminModel;

  factory AdminModel.fromJson(Map<String, dynamic> json) =>
      _$AdminModelFromJson(json);
}
