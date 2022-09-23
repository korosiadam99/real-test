// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubscriptionModel _$$_SubscriptionModelFromJson(Map<String, dynamic> json) =>
    _$_SubscriptionModel(
      isNotificationEnabled: json['isNotificationEnabled'] as bool,
      name: json['name'] as String,
      assignmentType: json['assignmentType'] as String,
      estateTypes: (json['estateTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minPrice: json['minPrice'] as int,
      maxPrice: json['maxPrice'] as int,
      locations: (json['locations'] as List<dynamic>)
          .map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SubscriptionModelToJson(
        _$_SubscriptionModel instance) =>
    <String, dynamic>{
      'isNotificationEnabled': instance.isNotificationEnabled,
      'name': instance.name,
      'assignmentType': instance.assignmentType,
      'estateTypes': instance.estateTypes,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'locations': instance.locations,
    };
