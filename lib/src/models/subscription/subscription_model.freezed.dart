// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) {
  return _SubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionModel {
  bool get isNotificationEnabled => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get assignmentType => throw _privateConstructorUsedError;
  List<String> get estateTypes => throw _privateConstructorUsedError;
  int get minPrice => throw _privateConstructorUsedError;
  int get maxPrice => throw _privateConstructorUsedError;
  List<LocationModel> get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionModelCopyWith<SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionModelCopyWith<$Res> {
  factory $SubscriptionModelCopyWith(
          SubscriptionModel value, $Res Function(SubscriptionModel) then) =
      _$SubscriptionModelCopyWithImpl<$Res>;
  $Res call(
      {bool isNotificationEnabled,
      String name,
      String assignmentType,
      List<String> estateTypes,
      int minPrice,
      int maxPrice,
      List<LocationModel> locations});
}

/// @nodoc
class _$SubscriptionModelCopyWithImpl<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  _$SubscriptionModelCopyWithImpl(this._value, this._then);

  final SubscriptionModel _value;
  // ignore: unused_field
  final $Res Function(SubscriptionModel) _then;

  @override
  $Res call({
    Object? isNotificationEnabled = freezed,
    Object? name = freezed,
    Object? assignmentType = freezed,
    Object? estateTypes = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      isNotificationEnabled: isNotificationEnabled == freezed
          ? _value.isNotificationEnabled
          : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentType: assignmentType == freezed
          ? _value.assignmentType
          : assignmentType // ignore: cast_nullable_to_non_nullable
              as String,
      estateTypes: estateTypes == freezed
          ? _value.estateTypes
          : estateTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SubscriptionModelCopyWith<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  factory _$$_SubscriptionModelCopyWith(_$_SubscriptionModel value,
          $Res Function(_$_SubscriptionModel) then) =
      __$$_SubscriptionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isNotificationEnabled,
      String name,
      String assignmentType,
      List<String> estateTypes,
      int minPrice,
      int maxPrice,
      List<LocationModel> locations});
}

/// @nodoc
class __$$_SubscriptionModelCopyWithImpl<$Res>
    extends _$SubscriptionModelCopyWithImpl<$Res>
    implements _$$_SubscriptionModelCopyWith<$Res> {
  __$$_SubscriptionModelCopyWithImpl(
      _$_SubscriptionModel _value, $Res Function(_$_SubscriptionModel) _then)
      : super(_value, (v) => _then(v as _$_SubscriptionModel));

  @override
  _$_SubscriptionModel get _value => super._value as _$_SubscriptionModel;

  @override
  $Res call({
    Object? isNotificationEnabled = freezed,
    Object? name = freezed,
    Object? assignmentType = freezed,
    Object? estateTypes = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? locations = freezed,
  }) {
    return _then(_$_SubscriptionModel(
      isNotificationEnabled: isNotificationEnabled == freezed
          ? _value.isNotificationEnabled
          : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentType: assignmentType == freezed
          ? _value.assignmentType
          : assignmentType // ignore: cast_nullable_to_non_nullable
              as String,
      estateTypes: estateTypes == freezed
          ? _value._estateTypes
          : estateTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      locations: locations == freezed
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionModel implements _SubscriptionModel {
  const _$_SubscriptionModel(
      {required this.isNotificationEnabled,
      required this.name,
      required this.assignmentType,
      required final List<String> estateTypes,
      required this.minPrice,
      required this.maxPrice,
      required final List<LocationModel> locations})
      : _estateTypes = estateTypes,
        _locations = locations;

  factory _$_SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionModelFromJson(json);

  @override
  final bool isNotificationEnabled;
  @override
  final String name;
  @override
  final String assignmentType;
  final List<String> _estateTypes;
  @override
  List<String> get estateTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_estateTypes);
  }

  @override
  final int minPrice;
  @override
  final int maxPrice;
  final List<LocationModel> _locations;
  @override
  List<LocationModel> get locations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  String toString() {
    return 'SubscriptionModel(isNotificationEnabled: $isNotificationEnabled, name: $name, assignmentType: $assignmentType, estateTypes: $estateTypes, minPrice: $minPrice, maxPrice: $maxPrice, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionModel &&
            const DeepCollectionEquality()
                .equals(other.isNotificationEnabled, isNotificationEnabled) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.assignmentType, assignmentType) &&
            const DeepCollectionEquality()
                .equals(other._estateTypes, _estateTypes) &&
            const DeepCollectionEquality().equals(other.minPrice, minPrice) &&
            const DeepCollectionEquality().equals(other.maxPrice, maxPrice) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isNotificationEnabled),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(assignmentType),
      const DeepCollectionEquality().hash(_estateTypes),
      const DeepCollectionEquality().hash(minPrice),
      const DeepCollectionEquality().hash(maxPrice),
      const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  _$$_SubscriptionModelCopyWith<_$_SubscriptionModel> get copyWith =>
      __$$_SubscriptionModelCopyWithImpl<_$_SubscriptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionModelToJson(
      this,
    );
  }
}

abstract class _SubscriptionModel implements SubscriptionModel {
  const factory _SubscriptionModel(
      {required final bool isNotificationEnabled,
      required final String name,
      required final String assignmentType,
      required final List<String> estateTypes,
      required final int minPrice,
      required final int maxPrice,
      required final List<LocationModel> locations}) = _$_SubscriptionModel;

  factory _SubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionModel.fromJson;

  @override
  bool get isNotificationEnabled;
  @override
  String get name;
  @override
  String get assignmentType;
  @override
  List<String> get estateTypes;
  @override
  int get minPrice;
  @override
  int get maxPrice;
  @override
  List<LocationModel> get locations;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionModelCopyWith<_$_SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
