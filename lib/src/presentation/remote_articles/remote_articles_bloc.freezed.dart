// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_articles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteArticlesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArticlesEvent value) getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetArticlesEvent value)? getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArticlesEvent value)? getArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteArticlesEventCopyWith<$Res> {
  factory $RemoteArticlesEventCopyWith(
          RemoteArticlesEvent value, $Res Function(RemoteArticlesEvent) then) =
      _$RemoteArticlesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteArticlesEventCopyWithImpl<$Res>
    implements $RemoteArticlesEventCopyWith<$Res> {
  _$RemoteArticlesEventCopyWithImpl(this._value, this._then);

  final RemoteArticlesEvent _value;
  // ignore: unused_field
  final $Res Function(RemoteArticlesEvent) _then;
}

/// @nodoc
abstract class _$$_GetArticlesEventCopyWith<$Res> {
  factory _$$_GetArticlesEventCopyWith(
          _$_GetArticlesEvent value, $Res Function(_$_GetArticlesEvent) then) =
      __$$_GetArticlesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetArticlesEventCopyWithImpl<$Res>
    extends _$RemoteArticlesEventCopyWithImpl<$Res>
    implements _$$_GetArticlesEventCopyWith<$Res> {
  __$$_GetArticlesEventCopyWithImpl(
      _$_GetArticlesEvent _value, $Res Function(_$_GetArticlesEvent) _then)
      : super(_value, (v) => _then(v as _$_GetArticlesEvent));

  @override
  _$_GetArticlesEvent get _value => super._value as _$_GetArticlesEvent;
}

/// @nodoc

class _$_GetArticlesEvent
    with DiagnosticableTreeMixin
    implements _GetArticlesEvent {
  const _$_GetArticlesEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteArticlesEvent.getArticles()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RemoteArticlesEvent.getArticles'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetArticlesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticles,
  }) {
    return getArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getArticles,
  }) {
    return getArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticles,
    required TResult orElse(),
  }) {
    if (getArticles != null) {
      return getArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArticlesEvent value) getArticles,
  }) {
    return getArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetArticlesEvent value)? getArticles,
  }) {
    return getArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArticlesEvent value)? getArticles,
    required TResult orElse(),
  }) {
    if (getArticles != null) {
      return getArticles(this);
    }
    return orElse();
  }
}

abstract class _GetArticlesEvent implements RemoteArticlesEvent {
  const factory _GetArticlesEvent() = _$_GetArticlesEvent;
}

/// @nodoc
mixin _$RemotteArticlesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles, bool noMoreData) done,
    required TResult Function(DioError error) error,
    required TResult Function(String currentInactivityTime)
        currentInactivityTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticlesLoadingState value) loading,
    required TResult Function(RemoteArticlesDoneState value) done,
    required TResult Function(RemoteArticlesErrorState value) error,
    required TResult Function(GetInactivityTimeState value)
        currentInactivityTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemotteArticlesStateCopyWith<$Res> {
  factory $RemotteArticlesStateCopyWith(RemotteArticlesState value,
          $Res Function(RemotteArticlesState) then) =
      _$RemotteArticlesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemotteArticlesStateCopyWithImpl<$Res>
    implements $RemotteArticlesStateCopyWith<$Res> {
  _$RemotteArticlesStateCopyWithImpl(this._value, this._then);

  final RemotteArticlesState _value;
  // ignore: unused_field
  final $Res Function(RemotteArticlesState) _then;
}

/// @nodoc
abstract class _$$RemoteArticlesLoadingStateCopyWith<$Res> {
  factory _$$RemoteArticlesLoadingStateCopyWith(
          _$RemoteArticlesLoadingState value,
          $Res Function(_$RemoteArticlesLoadingState) then) =
      __$$RemoteArticlesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteArticlesLoadingStateCopyWithImpl<$Res>
    extends _$RemotteArticlesStateCopyWithImpl<$Res>
    implements _$$RemoteArticlesLoadingStateCopyWith<$Res> {
  __$$RemoteArticlesLoadingStateCopyWithImpl(
      _$RemoteArticlesLoadingState _value,
      $Res Function(_$RemoteArticlesLoadingState) _then)
      : super(_value, (v) => _then(v as _$RemoteArticlesLoadingState));

  @override
  _$RemoteArticlesLoadingState get _value =>
      super._value as _$RemoteArticlesLoadingState;
}

/// @nodoc

class _$RemoteArticlesLoadingState
    with DiagnosticableTreeMixin
    implements RemoteArticlesLoadingState {
  const _$RemoteArticlesLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemotteArticlesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RemotteArticlesState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteArticlesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles, bool noMoreData) done,
    required TResult Function(DioError error) error,
    required TResult Function(String currentInactivityTime)
        currentInactivityTime,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticlesLoadingState value) loading,
    required TResult Function(RemoteArticlesDoneState value) done,
    required TResult Function(RemoteArticlesErrorState value) error,
    required TResult Function(GetInactivityTimeState value)
        currentInactivityTime,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RemoteArticlesLoadingState implements RemotteArticlesState {
  const factory RemoteArticlesLoadingState() = _$RemoteArticlesLoadingState;
}

/// @nodoc
abstract class _$$RemoteArticlesDoneStateCopyWith<$Res> {
  factory _$$RemoteArticlesDoneStateCopyWith(_$RemoteArticlesDoneState value,
          $Res Function(_$RemoteArticlesDoneState) then) =
      __$$RemoteArticlesDoneStateCopyWithImpl<$Res>;
  $Res call({List<Article> articles, bool noMoreData});
}

/// @nodoc
class __$$RemoteArticlesDoneStateCopyWithImpl<$Res>
    extends _$RemotteArticlesStateCopyWithImpl<$Res>
    implements _$$RemoteArticlesDoneStateCopyWith<$Res> {
  __$$RemoteArticlesDoneStateCopyWithImpl(_$RemoteArticlesDoneState _value,
      $Res Function(_$RemoteArticlesDoneState) _then)
      : super(_value, (v) => _then(v as _$RemoteArticlesDoneState));

  @override
  _$RemoteArticlesDoneState get _value =>
      super._value as _$RemoteArticlesDoneState;

  @override
  $Res call({
    Object? articles = freezed,
    Object? noMoreData = freezed,
  }) {
    return _then(_$RemoteArticlesDoneState(
      articles: articles == freezed
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      noMoreData: noMoreData == freezed
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RemoteArticlesDoneState
    with DiagnosticableTreeMixin
    implements RemoteArticlesDoneState {
  const _$RemoteArticlesDoneState(
      {required final List<Article> articles, required this.noMoreData})
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final bool noMoreData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemotteArticlesState.done(articles: $articles, noMoreData: $noMoreData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemotteArticlesState.done'))
      ..add(DiagnosticsProperty('articles', articles))
      ..add(DiagnosticsProperty('noMoreData', noMoreData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteArticlesDoneState &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            const DeepCollectionEquality()
                .equals(other.noMoreData, noMoreData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_articles),
      const DeepCollectionEquality().hash(noMoreData));

  @JsonKey(ignore: true)
  @override
  _$$RemoteArticlesDoneStateCopyWith<_$RemoteArticlesDoneState> get copyWith =>
      __$$RemoteArticlesDoneStateCopyWithImpl<_$RemoteArticlesDoneState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles, bool noMoreData) done,
    required TResult Function(DioError error) error,
    required TResult Function(String currentInactivityTime)
        currentInactivityTime,
  }) {
    return done(articles, noMoreData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
  }) {
    return done?.call(articles, noMoreData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(articles, noMoreData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticlesLoadingState value) loading,
    required TResult Function(RemoteArticlesDoneState value) done,
    required TResult Function(RemoteArticlesErrorState value) error,
    required TResult Function(GetInactivityTimeState value)
        currentInactivityTime,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class RemoteArticlesDoneState implements RemotteArticlesState {
  const factory RemoteArticlesDoneState(
      {required final List<Article> articles,
      required final bool noMoreData}) = _$RemoteArticlesDoneState;

  List<Article> get articles => throw _privateConstructorUsedError;
  bool get noMoreData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RemoteArticlesDoneStateCopyWith<_$RemoteArticlesDoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteArticlesErrorStateCopyWith<$Res> {
  factory _$$RemoteArticlesErrorStateCopyWith(_$RemoteArticlesErrorState value,
          $Res Function(_$RemoteArticlesErrorState) then) =
      __$$RemoteArticlesErrorStateCopyWithImpl<$Res>;
  $Res call({DioError error});
}

/// @nodoc
class __$$RemoteArticlesErrorStateCopyWithImpl<$Res>
    extends _$RemotteArticlesStateCopyWithImpl<$Res>
    implements _$$RemoteArticlesErrorStateCopyWith<$Res> {
  __$$RemoteArticlesErrorStateCopyWithImpl(_$RemoteArticlesErrorState _value,
      $Res Function(_$RemoteArticlesErrorState) _then)
      : super(_value, (v) => _then(v as _$RemoteArticlesErrorState));

  @override
  _$RemoteArticlesErrorState get _value =>
      super._value as _$RemoteArticlesErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RemoteArticlesErrorState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$RemoteArticlesErrorState
    with DiagnosticableTreeMixin
    implements RemoteArticlesErrorState {
  const _$RemoteArticlesErrorState(this.error);

  @override
  final DioError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemotteArticlesState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemotteArticlesState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteArticlesErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$RemoteArticlesErrorStateCopyWith<_$RemoteArticlesErrorState>
      get copyWith =>
          __$$RemoteArticlesErrorStateCopyWithImpl<_$RemoteArticlesErrorState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles, bool noMoreData) done,
    required TResult Function(DioError error) error,
    required TResult Function(String currentInactivityTime)
        currentInactivityTime,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticlesLoadingState value) loading,
    required TResult Function(RemoteArticlesDoneState value) done,
    required TResult Function(RemoteArticlesErrorState value) error,
    required TResult Function(GetInactivityTimeState value)
        currentInactivityTime,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoteArticlesErrorState implements RemotteArticlesState {
  const factory RemoteArticlesErrorState(final DioError error) =
      _$RemoteArticlesErrorState;

  DioError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RemoteArticlesErrorStateCopyWith<_$RemoteArticlesErrorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInactivityTimeStateCopyWith<$Res> {
  factory _$$GetInactivityTimeStateCopyWith(_$GetInactivityTimeState value,
          $Res Function(_$GetInactivityTimeState) then) =
      __$$GetInactivityTimeStateCopyWithImpl<$Res>;
  $Res call({String currentInactivityTime});
}

/// @nodoc
class __$$GetInactivityTimeStateCopyWithImpl<$Res>
    extends _$RemotteArticlesStateCopyWithImpl<$Res>
    implements _$$GetInactivityTimeStateCopyWith<$Res> {
  __$$GetInactivityTimeStateCopyWithImpl(_$GetInactivityTimeState _value,
      $Res Function(_$GetInactivityTimeState) _then)
      : super(_value, (v) => _then(v as _$GetInactivityTimeState));

  @override
  _$GetInactivityTimeState get _value =>
      super._value as _$GetInactivityTimeState;

  @override
  $Res call({
    Object? currentInactivityTime = freezed,
  }) {
    return _then(_$GetInactivityTimeState(
      currentInactivityTime: currentInactivityTime == freezed
          ? _value.currentInactivityTime
          : currentInactivityTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInactivityTimeState
    with DiagnosticableTreeMixin
    implements GetInactivityTimeState {
  const _$GetInactivityTimeState({required this.currentInactivityTime});

  @override
  final String currentInactivityTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemotteArticlesState.currentInactivityTime(currentInactivityTime: $currentInactivityTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RemotteArticlesState.currentInactivityTime'))
      ..add(
          DiagnosticsProperty('currentInactivityTime', currentInactivityTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInactivityTimeState &&
            const DeepCollectionEquality()
                .equals(other.currentInactivityTime, currentInactivityTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentInactivityTime));

  @JsonKey(ignore: true)
  @override
  _$$GetInactivityTimeStateCopyWith<_$GetInactivityTimeState> get copyWith =>
      __$$GetInactivityTimeStateCopyWithImpl<_$GetInactivityTimeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles, bool noMoreData) done,
    required TResult Function(DioError error) error,
    required TResult Function(String currentInactivityTime)
        currentInactivityTime,
  }) {
    return currentInactivityTime(this.currentInactivityTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
  }) {
    return currentInactivityTime?.call(this.currentInactivityTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles, bool noMoreData)? done,
    TResult Function(DioError error)? error,
    TResult Function(String currentInactivityTime)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (currentInactivityTime != null) {
      return currentInactivityTime(this.currentInactivityTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticlesLoadingState value) loading,
    required TResult Function(RemoteArticlesDoneState value) done,
    required TResult Function(RemoteArticlesErrorState value) error,
    required TResult Function(GetInactivityTimeState value)
        currentInactivityTime,
  }) {
    return currentInactivityTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
  }) {
    return currentInactivityTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticlesLoadingState value)? loading,
    TResult Function(RemoteArticlesDoneState value)? done,
    TResult Function(RemoteArticlesErrorState value)? error,
    TResult Function(GetInactivityTimeState value)? currentInactivityTime,
    required TResult orElse(),
  }) {
    if (currentInactivityTime != null) {
      return currentInactivityTime(this);
    }
    return orElse();
  }
}

abstract class GetInactivityTimeState implements RemotteArticlesState {
  const factory GetInactivityTimeState(
      {required final String currentInactivityTime}) = _$GetInactivityTimeState;

  String get currentInactivityTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetInactivityTimeStateCopyWith<_$GetInactivityTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}
