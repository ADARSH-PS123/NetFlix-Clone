// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewEventCopyWith<$Res> {
  factory $NewEventCopyWith(NewEvent value, $Res Function(NewEvent) then) =
      _$NewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewEventCopyWithImpl<$Res> implements $NewEventCopyWith<$Res> {
  _$NewEventCopyWithImpl(this._value, this._then);

  final NewEvent _value;
  // ignore: unused_field
  final $Res Function(NewEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$NewEventCopyWithImpl<$Res>
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
    return 'NewEvent.started()';
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
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NewEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$NewState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewStateCopyWith<NewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewStateCopyWith<$Res> {
  factory $NewStateCopyWith(NewState value, $Res Function(NewState) then) =
      _$NewStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError, List<Result> results});
}

/// @nodoc
class _$NewStateCopyWithImpl<$Res> implements $NewStateCopyWith<$Res> {
  _$NewStateCopyWithImpl(this._value, this._then);

  final NewState _value;
  // ignore: unused_field
  final $Res Function(NewState) _then;

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
abstract class _$$_NewStateCopyWith<$Res> implements $NewStateCopyWith<$Res> {
  factory _$$_NewStateCopyWith(
          _$_NewState value, $Res Function(_$_NewState) then) =
      __$$_NewStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError, List<Result> results});
}

/// @nodoc
class __$$_NewStateCopyWithImpl<$Res> extends _$NewStateCopyWithImpl<$Res>
    implements _$$_NewStateCopyWith<$Res> {
  __$$_NewStateCopyWithImpl(
      _$_NewState _value, $Res Function(_$_NewState) _then)
      : super(_value, (v) => _then(v as _$_NewState));

  @override
  _$_NewState get _value => super._value as _$_NewState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_NewState(
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

class _$_NewState implements _NewState {
  const _$_NewState(
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
    return 'NewState(isLoading: $isLoading, isError: $isError, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewState &&
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
  _$$_NewStateCopyWith<_$_NewState> get copyWith =>
      __$$_NewStateCopyWithImpl<_$_NewState>(this, _$identity);
}

abstract class _NewState implements NewState {
  const factory _NewState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Result> results}) = _$_NewState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$_NewStateCopyWith<_$_NewState> get copyWith =>
      throw _privateConstructorUsedError;
}
