import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_test/src/models/subscription/location/location_model.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

@Freezed()
class SubscriptionModel with _$SubscriptionModel {
  const factory SubscriptionModel({
    required bool isNotificationEnabled,
    required String name,
    required String assignmentType,
    required List<String> estateTypes,
    required int minPrice,
    required int maxPrice,
    required List<LocationModel> locations,
  }) = _SubscriptionModel;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);
}
