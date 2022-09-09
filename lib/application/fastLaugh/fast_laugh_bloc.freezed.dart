// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() starting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? starting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? starting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Starting value) starting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Starting value)? starting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Starting value)? starting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  final FastLaughEvent _value;
  // ignore: unused_field
  final $Res Function(FastLaughEvent) _then;
}

/// @nodoc
abstract class _$$_StartingCopyWith<$Res> {
  factory _$$_StartingCopyWith(
          _$_Starting value, $Res Function(_$_Starting) then) =
      __$$_StartingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartingCopyWithImpl<$Res> extends _$FastLaughEventCopyWithImpl<$Res>
    implements _$$_StartingCopyWith<$Res> {
  __$$_StartingCopyWithImpl(
      _$_Starting _value, $Res Function(_$_Starting) _then)
      : super(_value, (v) => _then(v as _$_Starting));

  @override
  _$_Starting get _value => super._value as _$_Starting;
}

/// @nodoc

class _$_Starting implements _Starting {
  const _$_Starting();

  @override
  String toString() {
    return 'FastLaughEvent.starting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Starting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() starting,
  }) {
    return starting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? starting,
  }) {
    return starting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? starting,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Starting value) starting,
  }) {
    return starting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Starting value)? starting,
  }) {
    return starting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Starting value)? starting,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting(this);
    }
    return orElse();
  }
}

abstract class _Starting implements FastLaughEvent {
  const factory _Starting() = _$_Starting;
}

/// @nodoc
mixin _$FastLaughState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Category> get videos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError, List<Category> videos});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  final FastLaughState _value;
  // ignore: unused_field
  final $Res Function(FastLaughState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? videos = freezed,
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
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
abstract class _$$_FastLaughStateCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$_FastLaughStateCopyWith(
          _$_FastLaughState value, $Res Function(_$_FastLaughState) then) =
      __$$_FastLaughStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError, List<Category> videos});
}

/// @nodoc
class __$$_FastLaughStateCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res>
    implements _$$_FastLaughStateCopyWith<$Res> {
  __$$_FastLaughStateCopyWithImpl(
      _$_FastLaughState _value, $Res Function(_$_FastLaughState) _then)
      : super(_value, (v) => _then(v as _$_FastLaughState));

  @override
  _$_FastLaughState get _value => super._value as _$_FastLaughState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? videos = freezed,
  }) {
    return _then(_$_FastLaughState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      videos: videos == freezed
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$_FastLaughState implements _FastLaughState {
  const _$_FastLaughState(
      {required this.isLoading,
      required this.isError,
      required final List<Category> videos})
      : _videos = videos;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Category> _videos;
  @override
  List<Category> get videos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'FastLaughState(isLoading: $isLoading, isError: $isError, videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FastLaughState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  _$$_FastLaughStateCopyWith<_$_FastLaughState> get copyWith =>
      __$$_FastLaughStateCopyWithImpl<_$_FastLaughState>(this, _$identity);
}

abstract class _FastLaughState implements FastLaughState {
  const factory _FastLaughState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Category> videos}) = _$_FastLaughState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Category> get videos;
  @override
  @JsonKey(ignore: true)
  _$$_FastLaughStateCopyWith<_$_FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}
