// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page.controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainControllerState {
  WeatherResponse? get weather => throw _privateConstructorUsedError;
  WeatherForecast? get forecast => throw _privateConstructorUsedError;

  /// Create a copy of MainControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainControllerStateCopyWith<MainControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainControllerStateCopyWith<$Res> {
  factory $MainControllerStateCopyWith(
          MainControllerState value, $Res Function(MainControllerState) then) =
      _$MainControllerStateCopyWithImpl<$Res, MainControllerState>;
  @useResult
  $Res call({WeatherResponse? weather, WeatherForecast? forecast});

  $WeatherResponseCopyWith<$Res>? get weather;
  $WeatherForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$MainControllerStateCopyWithImpl<$Res, $Val extends MainControllerState>
    implements $MainControllerStateCopyWith<$Res> {
  _$MainControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as WeatherForecast?,
    ) as $Val);
  }

  /// Create a copy of MainControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherResponseCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherResponseCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }

  /// Create a copy of MainControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $WeatherForecastCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainControllerStateImplCopyWith<$Res>
    implements $MainControllerStateCopyWith<$Res> {
  factory _$$MainControllerStateImplCopyWith(_$MainControllerStateImpl value,
          $Res Function(_$MainControllerStateImpl) then) =
      __$$MainControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherResponse? weather, WeatherForecast? forecast});

  @override
  $WeatherResponseCopyWith<$Res>? get weather;
  @override
  $WeatherForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$MainControllerStateImplCopyWithImpl<$Res>
    extends _$MainControllerStateCopyWithImpl<$Res, _$MainControllerStateImpl>
    implements _$$MainControllerStateImplCopyWith<$Res> {
  __$$MainControllerStateImplCopyWithImpl(_$MainControllerStateImpl _value,
      $Res Function(_$MainControllerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_$MainControllerStateImpl(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as WeatherForecast?,
    ));
  }
}

/// @nodoc

class _$MainControllerStateImpl implements _MainControllerState {
  _$MainControllerStateImpl({required this.weather, required this.forecast});

  @override
  final WeatherResponse? weather;
  @override
  final WeatherForecast? forecast;

  @override
  String toString() {
    return 'MainControllerState(weather: $weather, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainControllerStateImpl &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather, forecast);

  /// Create a copy of MainControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainControllerStateImplCopyWith<_$MainControllerStateImpl> get copyWith =>
      __$$MainControllerStateImplCopyWithImpl<_$MainControllerStateImpl>(
          this, _$identity);
}

abstract class _MainControllerState implements MainControllerState {
  factory _MainControllerState(
      {required final WeatherResponse? weather,
      required final WeatherForecast? forecast}) = _$MainControllerStateImpl;

  @override
  WeatherResponse? get weather;
  @override
  WeatherForecast? get forecast;

  /// Create a copy of MainControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainControllerStateImplCopyWith<_$MainControllerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
