// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MarkdownElementTypeTearOff {
  const _$MarkdownElementTypeTearOff();

  _MarkdownElementImage image({required String url}) {
    return _MarkdownElementImage(
      url: url,
    );
  }

  _MarkdownElementLink link({required String url}) {
    return _MarkdownElementLink(
      url: url,
    );
  }

  _MarkdownElementBold bold() {
    return const _MarkdownElementBold();
  }

  _MarkdownElementItalic italic() {
    return const _MarkdownElementItalic();
  }

  _MarkdownElementStrikethrough strikethrough() {
    return const _MarkdownElementStrikethrough();
  }
}

/// @nodoc
const $MarkdownElementType = _$MarkdownElementTypeTearOff();

/// @nodoc
mixin _$MarkdownElementType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) image,
    required TResult Function(String url) link,
    required TResult Function() bold,
    required TResult Function() italic,
    required TResult Function() strikethrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkdownElementImage value) image,
    required TResult Function(_MarkdownElementLink value) link,
    required TResult Function(_MarkdownElementBold value) bold,
    required TResult Function(_MarkdownElementItalic value) italic,
    required TResult Function(_MarkdownElementStrikethrough value)
        strikethrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkdownElementTypeCopyWith<$Res> {
  factory $MarkdownElementTypeCopyWith(
          MarkdownElementType value, $Res Function(MarkdownElementType) then) =
      _$MarkdownElementTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarkdownElementTypeCopyWithImpl<$Res>
    implements $MarkdownElementTypeCopyWith<$Res> {
  _$MarkdownElementTypeCopyWithImpl(this._value, this._then);

  final MarkdownElementType _value;
  // ignore: unused_field
  final $Res Function(MarkdownElementType) _then;
}

/// @nodoc
abstract class _$MarkdownElementImageCopyWith<$Res> {
  factory _$MarkdownElementImageCopyWith(_MarkdownElementImage value,
          $Res Function(_MarkdownElementImage) then) =
      __$MarkdownElementImageCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$MarkdownElementImageCopyWithImpl<$Res>
    extends _$MarkdownElementTypeCopyWithImpl<$Res>
    implements _$MarkdownElementImageCopyWith<$Res> {
  __$MarkdownElementImageCopyWithImpl(
      _MarkdownElementImage _value, $Res Function(_MarkdownElementImage) _then)
      : super(_value, (v) => _then(v as _MarkdownElementImage));

  @override
  _MarkdownElementImage get _value => super._value as _MarkdownElementImage;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_MarkdownElementImage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MarkdownElementImage implements _MarkdownElementImage {
  const _$_MarkdownElementImage({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'MarkdownElementType.image(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkdownElementImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$MarkdownElementImageCopyWith<_MarkdownElementImage> get copyWith =>
      __$MarkdownElementImageCopyWithImpl<_MarkdownElementImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) image,
    required TResult Function(String url) link,
    required TResult Function() bold,
    required TResult Function() italic,
    required TResult Function() strikethrough,
  }) {
    return image(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
  }) {
    return image?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkdownElementImage value) image,
    required TResult Function(_MarkdownElementLink value) link,
    required TResult Function(_MarkdownElementBold value) bold,
    required TResult Function(_MarkdownElementItalic value) italic,
    required TResult Function(_MarkdownElementStrikethrough value)
        strikethrough,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _MarkdownElementImage implements MarkdownElementType {
  const factory _MarkdownElementImage({required String url}) =
      _$_MarkdownElementImage;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MarkdownElementImageCopyWith<_MarkdownElementImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MarkdownElementLinkCopyWith<$Res> {
  factory _$MarkdownElementLinkCopyWith(_MarkdownElementLink value,
          $Res Function(_MarkdownElementLink) then) =
      __$MarkdownElementLinkCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$MarkdownElementLinkCopyWithImpl<$Res>
    extends _$MarkdownElementTypeCopyWithImpl<$Res>
    implements _$MarkdownElementLinkCopyWith<$Res> {
  __$MarkdownElementLinkCopyWithImpl(
      _MarkdownElementLink _value, $Res Function(_MarkdownElementLink) _then)
      : super(_value, (v) => _then(v as _MarkdownElementLink));

  @override
  _MarkdownElementLink get _value => super._value as _MarkdownElementLink;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_MarkdownElementLink(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MarkdownElementLink implements _MarkdownElementLink {
  const _$_MarkdownElementLink({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'MarkdownElementType.link(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkdownElementLink &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$MarkdownElementLinkCopyWith<_MarkdownElementLink> get copyWith =>
      __$MarkdownElementLinkCopyWithImpl<_MarkdownElementLink>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) image,
    required TResult Function(String url) link,
    required TResult Function() bold,
    required TResult Function() italic,
    required TResult Function() strikethrough,
  }) {
    return link(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
  }) {
    return link?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkdownElementImage value) image,
    required TResult Function(_MarkdownElementLink value) link,
    required TResult Function(_MarkdownElementBold value) bold,
    required TResult Function(_MarkdownElementItalic value) italic,
    required TResult Function(_MarkdownElementStrikethrough value)
        strikethrough,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class _MarkdownElementLink implements MarkdownElementType {
  const factory _MarkdownElementLink({required String url}) =
      _$_MarkdownElementLink;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MarkdownElementLinkCopyWith<_MarkdownElementLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MarkdownElementBoldCopyWith<$Res> {
  factory _$MarkdownElementBoldCopyWith(_MarkdownElementBold value,
          $Res Function(_MarkdownElementBold) then) =
      __$MarkdownElementBoldCopyWithImpl<$Res>;
}

/// @nodoc
class __$MarkdownElementBoldCopyWithImpl<$Res>
    extends _$MarkdownElementTypeCopyWithImpl<$Res>
    implements _$MarkdownElementBoldCopyWith<$Res> {
  __$MarkdownElementBoldCopyWithImpl(
      _MarkdownElementBold _value, $Res Function(_MarkdownElementBold) _then)
      : super(_value, (v) => _then(v as _MarkdownElementBold));

  @override
  _MarkdownElementBold get _value => super._value as _MarkdownElementBold;
}

/// @nodoc

class _$_MarkdownElementBold implements _MarkdownElementBold {
  const _$_MarkdownElementBold();

  @override
  String toString() {
    return 'MarkdownElementType.bold()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MarkdownElementBold);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) image,
    required TResult Function(String url) link,
    required TResult Function() bold,
    required TResult Function() italic,
    required TResult Function() strikethrough,
  }) {
    return bold();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
  }) {
    return bold?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
    required TResult orElse(),
  }) {
    if (bold != null) {
      return bold();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkdownElementImage value) image,
    required TResult Function(_MarkdownElementLink value) link,
    required TResult Function(_MarkdownElementBold value) bold,
    required TResult Function(_MarkdownElementItalic value) italic,
    required TResult Function(_MarkdownElementStrikethrough value)
        strikethrough,
  }) {
    return bold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
  }) {
    return bold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
    required TResult orElse(),
  }) {
    if (bold != null) {
      return bold(this);
    }
    return orElse();
  }
}

abstract class _MarkdownElementBold implements MarkdownElementType {
  const factory _MarkdownElementBold() = _$_MarkdownElementBold;
}

/// @nodoc
abstract class _$MarkdownElementItalicCopyWith<$Res> {
  factory _$MarkdownElementItalicCopyWith(_MarkdownElementItalic value,
          $Res Function(_MarkdownElementItalic) then) =
      __$MarkdownElementItalicCopyWithImpl<$Res>;
}

/// @nodoc
class __$MarkdownElementItalicCopyWithImpl<$Res>
    extends _$MarkdownElementTypeCopyWithImpl<$Res>
    implements _$MarkdownElementItalicCopyWith<$Res> {
  __$MarkdownElementItalicCopyWithImpl(_MarkdownElementItalic _value,
      $Res Function(_MarkdownElementItalic) _then)
      : super(_value, (v) => _then(v as _MarkdownElementItalic));

  @override
  _MarkdownElementItalic get _value => super._value as _MarkdownElementItalic;
}

/// @nodoc

class _$_MarkdownElementItalic implements _MarkdownElementItalic {
  const _$_MarkdownElementItalic();

  @override
  String toString() {
    return 'MarkdownElementType.italic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MarkdownElementItalic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) image,
    required TResult Function(String url) link,
    required TResult Function() bold,
    required TResult Function() italic,
    required TResult Function() strikethrough,
  }) {
    return italic();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
  }) {
    return italic?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
    required TResult orElse(),
  }) {
    if (italic != null) {
      return italic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkdownElementImage value) image,
    required TResult Function(_MarkdownElementLink value) link,
    required TResult Function(_MarkdownElementBold value) bold,
    required TResult Function(_MarkdownElementItalic value) italic,
    required TResult Function(_MarkdownElementStrikethrough value)
        strikethrough,
  }) {
    return italic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
  }) {
    return italic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
    required TResult orElse(),
  }) {
    if (italic != null) {
      return italic(this);
    }
    return orElse();
  }
}

abstract class _MarkdownElementItalic implements MarkdownElementType {
  const factory _MarkdownElementItalic() = _$_MarkdownElementItalic;
}

/// @nodoc
abstract class _$MarkdownElementStrikethroughCopyWith<$Res> {
  factory _$MarkdownElementStrikethroughCopyWith(
          _MarkdownElementStrikethrough value,
          $Res Function(_MarkdownElementStrikethrough) then) =
      __$MarkdownElementStrikethroughCopyWithImpl<$Res>;
}

/// @nodoc
class __$MarkdownElementStrikethroughCopyWithImpl<$Res>
    extends _$MarkdownElementTypeCopyWithImpl<$Res>
    implements _$MarkdownElementStrikethroughCopyWith<$Res> {
  __$MarkdownElementStrikethroughCopyWithImpl(
      _MarkdownElementStrikethrough _value,
      $Res Function(_MarkdownElementStrikethrough) _then)
      : super(_value, (v) => _then(v as _MarkdownElementStrikethrough));

  @override
  _MarkdownElementStrikethrough get _value =>
      super._value as _MarkdownElementStrikethrough;
}

/// @nodoc

class _$_MarkdownElementStrikethrough implements _MarkdownElementStrikethrough {
  const _$_MarkdownElementStrikethrough();

  @override
  String toString() {
    return 'MarkdownElementType.strikethrough()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MarkdownElementStrikethrough);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) image,
    required TResult Function(String url) link,
    required TResult Function() bold,
    required TResult Function() italic,
    required TResult Function() strikethrough,
  }) {
    return strikethrough();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
  }) {
    return strikethrough?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? image,
    TResult Function(String url)? link,
    TResult Function()? bold,
    TResult Function()? italic,
    TResult Function()? strikethrough,
    required TResult orElse(),
  }) {
    if (strikethrough != null) {
      return strikethrough();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkdownElementImage value) image,
    required TResult Function(_MarkdownElementLink value) link,
    required TResult Function(_MarkdownElementBold value) bold,
    required TResult Function(_MarkdownElementItalic value) italic,
    required TResult Function(_MarkdownElementStrikethrough value)
        strikethrough,
  }) {
    return strikethrough(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
  }) {
    return strikethrough?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkdownElementImage value)? image,
    TResult Function(_MarkdownElementLink value)? link,
    TResult Function(_MarkdownElementBold value)? bold,
    TResult Function(_MarkdownElementItalic value)? italic,
    TResult Function(_MarkdownElementStrikethrough value)? strikethrough,
    required TResult orElse(),
  }) {
    if (strikethrough != null) {
      return strikethrough(this);
    }
    return orElse();
  }
}

abstract class _MarkdownElementStrikethrough implements MarkdownElementType {
  const factory _MarkdownElementStrikethrough() =
      _$_MarkdownElementStrikethrough;
}
