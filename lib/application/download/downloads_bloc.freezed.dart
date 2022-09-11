// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  String get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page) getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String page)? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page)? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsEventCopyWith<DownloadsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res>;
  $Res call({String page});
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  final DownloadsEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadsEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetDownloadImagesCopyWith<$Res>
    implements $DownloadsEventCopyWith<$Res> {
  factory _$$_GetDownloadImagesCopyWith(_$_GetDownloadImages value,
          $Res Function(_$_GetDownloadImages) then) =
      __$$_GetDownloadImagesCopyWithImpl<$Res>;
  @override
  $Res call({String page});
}

/// @nodoc
class __$$_GetDownloadImagesCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res>
    implements _$$_GetDownloadImagesCopyWith<$Res> {
  __$$_GetDownloadImagesCopyWithImpl(
      _$_GetDownloadImages _value, $Res Function(_$_GetDownloadImages) _then)
      : super(_value, (v) => _then(v as _$_GetDownloadImages));

  @override
  _$_GetDownloadImages get _value => super._value as _$_GetDownloadImages;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$_GetDownloadImages(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDownloadImages implements _GetDownloadImages {
  const _$_GetDownloadImages({required this.page});

  @override
  final String page;

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadImages(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDownloadImages &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_GetDownloadImagesCopyWith<_$_GetDownloadImages> get copyWith =>
      __$$_GetDownloadImagesCopyWithImpl<_$_GetDownloadImages>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page) getDownloadImages,
  }) {
    return getDownloadImages(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String page)? getDownloadImages,
  }) {
    return getDownloadImages?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page)? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadImages,
  }) {
    return getDownloadImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
  }) {
    return getDownloadImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadImages implements DownloadsEvent {
  const factory _GetDownloadImages({required final String page}) =
      _$_GetDownloadImages;

  @override
  String get page;
  @override
  @JsonKey(ignore: true)
  _$$_GetDownloadImagesCopyWith<_$_GetDownloadImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Download>>> get optonFailureSuccess =>
      throw _privateConstructorUsedError;
  List<Download> get downloads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, List<Download>>> optonFailureSuccess,
      List<Download> downloads});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  final DownloadsState _value;
  // ignore: unused_field
  final $Res Function(DownloadsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? optonFailureSuccess = freezed,
    Object? downloads = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optonFailureSuccess: optonFailureSuccess == freezed
          ? _value.optonFailureSuccess
          : optonFailureSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Download>>>,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Download>,
    ));
  }
}

/// @nodoc
abstract class _$$_DownlodStatsCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$_DownlodStatsCopyWith(
          _$_DownlodStats value, $Res Function(_$_DownlodStats) then) =
      __$$_DownlodStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, List<Download>>> optonFailureSuccess,
      List<Download> downloads});
}

/// @nodoc
class __$$_DownlodStatsCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res>
    implements _$$_DownlodStatsCopyWith<$Res> {
  __$$_DownlodStatsCopyWithImpl(
      _$_DownlodStats _value, $Res Function(_$_DownlodStats) _then)
      : super(_value, (v) => _then(v as _$_DownlodStats));

  @override
  _$_DownlodStats get _value => super._value as _$_DownlodStats;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? optonFailureSuccess = freezed,
    Object? downloads = freezed,
  }) {
    return _then(_$_DownlodStats(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optonFailureSuccess: optonFailureSuccess == freezed
          ? _value.optonFailureSuccess
          : optonFailureSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Download>>>,
      downloads: downloads == freezed
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Download>,
    ));
  }
}

/// @nodoc

class _$_DownlodStats implements _DownlodStats {
  const _$_DownlodStats(
      {required this.isLoading,
      required this.optonFailureSuccess,
      required final List<Download> downloads})
      : _downloads = downloads;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, List<Download>>> optonFailureSuccess;
  final List<Download> _downloads;
  @override
  List<Download> get downloads {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, optonFailureSuccess: $optonFailureSuccess, downloads: $downloads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownlodStats &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.optonFailureSuccess, optonFailureSuccess) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(optonFailureSuccess),
      const DeepCollectionEquality().hash(_downloads));

  @JsonKey(ignore: true)
  @override
  _$$_DownlodStatsCopyWith<_$_DownlodStats> get copyWith =>
      __$$_DownlodStatsCopyWithImpl<_$_DownlodStats>(this, _$identity);
}

abstract class _DownlodStats implements DownloadsState {
  const factory _DownlodStats(
      {required final bool isLoading,
      required final Option<Either<MainFailure, List<Download>>>
          optonFailureSuccess,
      required final List<Download> downloads}) = _$_DownlodStats;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, List<Download>>> get optonFailureSuccess;
  @override
  List<Download> get downloads;
  @override
  @JsonKey(ignore: true)
  _$$_DownlodStatsCopyWith<_$_DownlodStats> get copyWith =>
      throw _privateConstructorUsedError;
}
