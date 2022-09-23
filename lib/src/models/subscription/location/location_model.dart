import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_test/src/models/subscription/location/admin_level/admin_level_model.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@Freezed()
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required AdminModel adminLevels,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
