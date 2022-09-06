// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
    required TResult Function(SearchMovieEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(SearchMovieEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(SearchMovieEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$_initializeCopyWith<$Res> {
  factory _$$_initializeCopyWith(
          _$_initialize value, $Res Function(_$_initialize) then) =
      __$$_initializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_initializeCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_initializeCopyWith<$Res> {
  __$$_initializeCopyWithImpl(
      _$_initialize _value, $Res Function(_$_initialize) _then)
      : super(_value, (v) => _then(v as _$_initialize));

  @override
  _$_initialize get _value => super._value as _$_initialize;
}

/// @nodoc

class _$_initialize implements _initialize {
  const _$_initialize();

  @override
  String toString() {
    return 'SearchEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) search,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? search,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
    required TResult Function(SearchMovieEvent value) search,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(SearchMovieEvent value)? search,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(SearchMovieEvent value)? search,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _initialize implements SearchEvent {
  const factory _initialize() = _$_initialize;
}

/// @nodoc
abstract class _$$SearchMovieEventCopyWith<$Res> {
  factory _$$SearchMovieEventCopyWith(
          _$SearchMovieEvent value, $Res Function(_$SearchMovieEvent) then) =
      __$$SearchMovieEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$SearchMovieEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchMovieEventCopyWith<$Res> {
  __$$SearchMovieEventCopyWithImpl(
      _$SearchMovieEvent _value, $Res Function(_$SearchMovieEvent) _then)
      : super(_value, (v) => _then(v as _$SearchMovieEvent));

  @override
  _$SearchMovieEvent get _value => super._value as _$SearchMovieEvent;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchMovieEvent(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovieEvent implements SearchMovieEvent {
  const _$SearchMovieEvent({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieEvent &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$SearchMovieEventCopyWith<_$SearchMovieEvent> get copyWith =>
      __$$SearchMovieEventCopyWithImpl<_$SearchMovieEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
    required TResult Function(SearchMovieEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(SearchMovieEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(SearchMovieEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchMovieEvent implements SearchEvent {
  const factory SearchMovieEvent({required final String query}) =
      _$SearchMovieEvent;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchMovieEventCopyWith<_$SearchMovieEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<SearchResultData> get searchList => throw _privateConstructorUsedError;
  List<Download> get idleList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool error,
      List<SearchResultData> searchList,
      List<Download> idleList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? searchList = freezed,
    Object? idleList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      searchList: searchList == freezed
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      idleList: idleList == freezed
          ? _value.idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Download>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool error,
      List<SearchResultData> searchList,
      List<Download> idleList});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? searchList = freezed,
    Object? idleList = freezed,
  }) {
    return _then(_$_SearchState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      searchList: searchList == freezed
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      idleList: idleList == freezed
          ? _value._idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Download>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.error,
      required final List<SearchResultData> searchList,
      required final List<Download> idleList})
      : _searchList = searchList,
        _idleList = idleList;

  @override
  final bool isLoading;
  @override
  final bool error;
  final List<SearchResultData> _searchList;
  @override
  List<SearchResultData> get searchList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchList);
  }

  final List<Download> _idleList;
  @override
  List<Download> get idleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idleList);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, error: $error, searchList: $searchList, idleList: $idleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList) &&
            const DeepCollectionEquality().equals(other._idleList, _idleList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_searchList),
      const DeepCollectionEquality().hash(_idleList));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool error,
      required final List<SearchResultData> searchList,
      required final List<Download> idleList}) = _$_SearchState;

  @override
  bool get isLoading;
  @override
  bool get error;
  @override
  List<SearchResultData> get searchList;
  @override
  List<Download> get idleList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
