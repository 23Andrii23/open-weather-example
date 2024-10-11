// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_page.controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherControllerState {
  WeatherResponse? get weather => throw _privateConstructorUsedError;
  WeatherForecast? get forecast => throw _privateConstructorUsedError;

  /// Create a copy of WeatherControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherControllerStateCopyWith<WeatherControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherControllerStateCopyWith<$Res> {
  factory $WeatherControllerStateCopyWith(WeatherControllerState value,
          $Res Function(WeatherControllerState) then) =
      _$WeatherControllerStateCopyWithImpl<$Res, WeatherControllerState>;
  @useResult
  $Res call({WeatherResponse? weather, WeatherForecast? forecast});

  $WeatherResponseCopyWith<$Res>? get weather;
  $WeatherForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$WeatherControllerStateCopyWithImpl<$Res,
        $Val extends WeatherControllerState>
    implements $WeatherControllerStateCopyWith<$Res> {
  _$WeatherControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherControllerState
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

  /// Create a copy of WeatherControllerState
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

  /// Create a copy of WeatherControllerState
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
abstract class _$$WeatherControllerStateImplCopyWith<$Res>
    implements $WeatherControllerStateCopyWith<$Res> {
  factory _$$WeatherControllerStateImplCopyWith(
          _$WeatherControllerStateImpl value,
          $Res Function(_$WeatherControllerStateImpl) then) =
      __$$WeatherControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherResponse? weather, WeatherForecast? forecast});

  @override
  $WeatherResponseCopyWith<$Res>? get weather;
  @override
  $WeatherForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$WeatherControllerStateImplCopyWithImpl<$Res>
    extends _$WeatherControllerStateCopyWithImpl<$Res,
        _$WeatherControllerStateImpl>
    implements _$$WeatherControllerStateImplCopyWith<$Res> {
  __$$WeatherControllerStateImplCopyWithImpl(
      _$WeatherControllerStateImpl _value,
      $Res Function(_$WeatherControllerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_$WeatherControllerStateImpl(
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

class _$WeatherControllerStateImpl implements _WeatherControllerState {
  _$WeatherControllerStateImpl({required this.weather, required this.forecast});

  @override
  final WeatherResponse? weather;
  @override
  final WeatherForecast? forecast;

  @override
  String toString() {
    return 'WeatherControllerState(weather: $weather, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherControllerStateImpl &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather, forecast);

  /// Create a copy of WeatherControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherControllerStateImplCopyWith<_$WeatherControllerStateImpl>
      get copyWith => __$$WeatherControllerStateImplCopyWithImpl<
          _$WeatherControllerStateImpl>(this, _$identity);
}

abstract class _WeatherControllerState implements WeatherControllerState {
  factory _WeatherControllerState(
      {required final WeatherResponse? weather,
      required final WeatherForecast? forecast}) = _$WeatherControllerStateImpl;

  @override
  WeatherResponse? get weather;
  @override
  WeatherForecast? get forecast;

  /// Create a copy of WeatherControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherControllerStateImplCopyWith<_$WeatherControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
