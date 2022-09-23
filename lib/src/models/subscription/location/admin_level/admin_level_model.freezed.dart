// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminModel _$AdminModelFromJson(Map<String, dynamic> json) {
  return _AdminModel.fromJson(json);
}

/// @nodoc
mixin _$AdminModel {
  @JsonKey(name: '6')
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: '8')
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminModelCopyWith<AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminModelCopyWith<$Res> {
  factory $AdminModelCopyWith(
          AdminModel value, $Res Function(AdminModel) then) =
      _$AdminModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '6') String state, @JsonKey(name: '8') String city});
}

/// @nodoc
class _$AdminModelCopyWithImpl<$Res> implements $AdminModelCopyWith<$Res> {
  _$AdminModelCopyWithImpl(this._value, this._then);

  final AdminModel _value;
  // ignore: unused_field
  final $Res Function(AdminModel) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AdminModelCopyWith<$Res>
    implements $AdminModelCopyWith<$Res> {
  factory _$$_AdminModelCopyWith(
          _$_AdminModel value, $Res Function(_$_AdminModel) then) =
      __$$_AdminModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '6') String state, @JsonKey(name: '8') String city});
}

/// @nodoc
class __$$_AdminModelCopyWithImpl<$Res> extends _$AdminModelCopyWithImpl<$Res>
    implements _$$_AdminModelCopyWith<$Res> {
  __$$_AdminModelCopyWithImpl(
      _$_AdminModel _value, $Res Function(_$_AdminModel) _then)
      : super(_value, (v) => _then(v as _$_AdminModel));

  @override
  _$_AdminModel get _value => super._value as _$_AdminModel;

  @override
  $Res call({
    Object? state = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_AdminModel(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminModel implements _AdminModel {
  const _$_AdminModel(
      {@JsonKey(name: '6') required this.state,
      @JsonKey(name: '8') required this.city});

  factory _$_AdminModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminModelFromJson(json);

  @override
  @JsonKey(name: '6')
  final String state;
  @override
  @JsonKey(name: '8')
  final String city;

  @override
  String toString() {
    return 'AdminModel(state: $state, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminModel &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_AdminModelCopyWith<_$_AdminModel> get copyWith =>
      __$$_AdminModelCopyWithImpl<_$_AdminModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminModelToJson(
      this,
    );
  }
}

abstract class _AdminModel implements AdminModel {
  const factory _AdminModel(
      {@JsonKey(name: '6') required final String state,
      @JsonKey(name: '8') required final String city}) = _$_AdminModel;

  factory _AdminModel.fromJson(Map<String, dynamic> json) =
      _$_AdminModel.fromJson;

  @override
  @JsonKey(name: '6')
  String get state;
  @override
  @JsonKey(name: '8')
  String get city;
  @override
  @JsonKey(ignore: true)
  _$$_AdminModelCopyWith<_$_AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}
