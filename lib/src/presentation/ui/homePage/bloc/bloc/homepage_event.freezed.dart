// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homepage_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PresaleIndexChanged {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresaleIndexChangedCopyWith<PresaleIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresaleIndexChangedCopyWith<$Res> {
  factory $PresaleIndexChangedCopyWith(
          PresaleIndexChanged value, $Res Function(PresaleIndexChanged) then) =
      _$PresaleIndexChangedCopyWithImpl<$Res, PresaleIndexChanged>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$PresaleIndexChangedCopyWithImpl<$Res, $Val extends PresaleIndexChanged>
    implements $PresaleIndexChangedCopyWith<$Res> {
  _$PresaleIndexChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresaleIndexChangedImplCopyWith<$Res>
    implements $PresaleIndexChangedCopyWith<$Res> {
  factory _$$PresaleIndexChangedImplCopyWith(_$PresaleIndexChangedImpl value,
          $Res Function(_$PresaleIndexChangedImpl) then) =
      __$$PresaleIndexChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PresaleIndexChangedImplCopyWithImpl<$Res>
    extends _$PresaleIndexChangedCopyWithImpl<$Res, _$PresaleIndexChangedImpl>
    implements _$$PresaleIndexChangedImplCopyWith<$Res> {
  __$$PresaleIndexChangedImplCopyWithImpl(_$PresaleIndexChangedImpl _value,
      $Res Function(_$PresaleIndexChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$PresaleIndexChangedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PresaleIndexChangedImpl implements _PresaleIndexChanged {
  const _$PresaleIndexChangedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PresaleIndexChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresaleIndexChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PresaleIndexChangedImplCopyWith<_$PresaleIndexChangedImpl> get copyWith =>
      __$$PresaleIndexChangedImplCopyWithImpl<_$PresaleIndexChangedImpl>(
          this, _$identity);
}

abstract class _PresaleIndexChanged implements PresaleIndexChanged {
  const factory _PresaleIndexChanged({required final int index}) =
      _$PresaleIndexChangedImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$PresaleIndexChangedImplCopyWith<_$PresaleIndexChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
