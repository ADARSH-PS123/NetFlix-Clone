// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Stated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? Stated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Stated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) Stated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? Stated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? Stated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotEventCopyWith<$Res> {
  factory $HotEventCopyWith(HotEvent value, $Res Function(HotEvent) then) =
      _$HotEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HotEventCopyWithImpl<$Res> implements $HotEventCopyWith<$Res> {
  _$HotEventCopyWithImpl(this._value, this._then);

  final HotEvent _value;
  // ignore: unused_field
  final $Res Function(HotEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$HotEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HotEvent.Stated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Stated,
  }) {
    return Stated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? Stated,
  }) {
    return Stated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Stated,
    required TResult orElse(),
  }) {
    if (Stated != null) {
      return Stated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) Stated,
  }) {
    return Stated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? Stated,
  }) {
    return Stated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? Stated,
    required TResult orElse(),
  }) {
    if (Stated != null) {
      return Stated(this);
    }
    return orElse();
  }
}

abstract class _Started implements HotEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$HotState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotStateCopyWith<HotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotStateCopyWith<$Res> {
  factory $HotStateCopyWith(HotState value, $Res Function(HotState) then) =
      _$HotStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError, List<Result> results});
}

/// @nodoc
class _$HotStateCopyWithImpl<$Res> implements $HotStateCopyWith<$Res> {
  _$HotStateCopyWithImpl(this._value, this._then);

  final HotState _value;
  // ignore: unused_field
  final $Res Function(HotState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
abstract class _$$_HotStateCopyWith<$Res> implements $HotStateCopyWith<$Res> {
  factory _$$_HotStateCopyWith(
          _$_HotState value, $Res Function(_$_HotState) then) =
      __$$_HotStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError, List<Result> results});
}

/// @nodoc
class __$$_HotStateCopyWithImpl<$Res> extends _$HotStateCopyWithImpl<$Res>
    implements _$$_HotStateCopyWith<$Res> {
  __$$_HotStateCopyWithImpl(
      _$_HotState _value, $Res Function(_$_HotState) _then)
      : super(_value, (v) => _then(v as _$_HotState));

  @override
  _$_HotState get _value => super._value as _$_HotState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_HotState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc

class _$_HotState implements _HotState {
  const _$_HotState(
      {required this.isLoading,
      required this.isError,
      required final List<Result> results})
      : _results = results;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Result> _results;
  @override
  List<Result> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'HotState(isLoading: $isLoading, isError: $isError, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_HotStateCopyWith<_$_HotState> get copyWith =>
      __$$_HotStateCopyWithImpl<_$_HotState>(this, _$identity);
}

abstract class _HotState implements HotState {
  const factory _HotState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Result> results}) = _$_HotState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$_HotStateCopyWith<_$_HotState> get copyWith =>
      throw _privateConstructorUsedError;
}
