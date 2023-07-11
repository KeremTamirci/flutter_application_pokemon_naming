// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTest _$PokemonTestFromJson(Map<String, dynamic> json) {
  return _PokemonTest.fromJson(json);
}

/// @nodoc
mixin _$PokemonTest {
  Sprites? get sprites => throw _privateConstructorUsedError;
  List<Stats>? get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTestCopyWith<PokemonTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTestCopyWith<$Res> {
  factory $PokemonTestCopyWith(
          PokemonTest value, $Res Function(PokemonTest) then) =
      _$PokemonTestCopyWithImpl<$Res, PokemonTest>;
  @useResult
  $Res call({Sprites? sprites, List<Stats>? stats});

  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class _$PokemonTestCopyWithImpl<$Res, $Val extends PokemonTest>
    implements $PokemonTestCopyWith<$Res> {
  _$PokemonTestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res>? get sprites {
    if (_value.sprites == null) {
      return null;
    }

    return $SpritesCopyWith<$Res>(_value.sprites!, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonTestCopyWith<$Res>
    implements $PokemonTestCopyWith<$Res> {
  factory _$$_PokemonTestCopyWith(
          _$_PokemonTest value, $Res Function(_$_PokemonTest) then) =
      __$$_PokemonTestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Sprites? sprites, List<Stats>? stats});

  @override
  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class __$$_PokemonTestCopyWithImpl<$Res>
    extends _$PokemonTestCopyWithImpl<$Res, _$_PokemonTest>
    implements _$$_PokemonTestCopyWith<$Res> {
  __$$_PokemonTestCopyWithImpl(
      _$_PokemonTest _value, $Res Function(_$_PokemonTest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? stats = freezed,
  }) {
    return _then(_$_PokemonTest(
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      stats: freezed == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTest implements _PokemonTest {
  _$_PokemonTest({this.sprites, final List<Stats>? stats}) : _stats = stats;

  factory _$_PokemonTest.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTestFromJson(json);

  @override
  final Sprites? sprites;
  final List<Stats>? _stats;
  @override
  List<Stats>? get stats {
    final value = _stats;
    if (value == null) return null;
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokemonTest(sprites: $sprites, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTest &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sprites, const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTestCopyWith<_$_PokemonTest> get copyWith =>
      __$$_PokemonTestCopyWithImpl<_$_PokemonTest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTestToJson(
      this,
    );
  }
}

abstract class _PokemonTest implements PokemonTest {
  factory _PokemonTest({final Sprites? sprites, final List<Stats>? stats}) =
      _$_PokemonTest;

  factory _PokemonTest.fromJson(Map<String, dynamic> json) =
      _$_PokemonTest.fromJson;

  @override
  Sprites? get sprites;
  @override
  List<Stats>? get stats;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTestCopyWith<_$_PokemonTest> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  String? get backDefault => throw _privateConstructorUsedError;
  String? get backShiny => throw _privateConstructorUsedError;
  String? get front_default => throw _privateConstructorUsedError;
  String? get frontShiny => throw _privateConstructorUsedError;
  Other? get other => throw _privateConstructorUsedError;
  Versions? get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call(
      {String? backDefault,
      String? backShiny,
      String? front_default,
      String? frontShiny,
      Other? other,
      Versions? versions});

  $OtherCopyWith<$Res>? get other;
  $VersionsCopyWith<$Res>? get versions;
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = freezed,
    Object? backShiny = freezed,
    Object? front_default = freezed,
    Object? frontShiny = freezed,
    Object? other = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      front_default: freezed == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other?,
      versions: freezed == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherCopyWith<$Res>? get other {
    if (_value.other == null) {
      return null;
    }

    return $OtherCopyWith<$Res>(_value.other!, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionsCopyWith<$Res>? get versions {
    if (_value.versions == null) {
      return null;
    }

    return $VersionsCopyWith<$Res>(_value.versions!, (value) {
      return _then(_value.copyWith(versions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SpritesCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$_SpritesCopyWith(
          _$_Sprites value, $Res Function(_$_Sprites) then) =
      __$$_SpritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? backDefault,
      String? backShiny,
      String? front_default,
      String? frontShiny,
      Other? other,
      Versions? versions});

  @override
  $OtherCopyWith<$Res>? get other;
  @override
  $VersionsCopyWith<$Res>? get versions;
}

/// @nodoc
class __$$_SpritesCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$_Sprites>
    implements _$$_SpritesCopyWith<$Res> {
  __$$_SpritesCopyWithImpl(_$_Sprites _value, $Res Function(_$_Sprites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = freezed,
    Object? backShiny = freezed,
    Object? front_default = freezed,
    Object? frontShiny = freezed,
    Object? other = freezed,
    Object? versions = freezed,
  }) {
    return _then(_$_Sprites(
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      front_default: freezed == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other?,
      versions: freezed == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sprites implements _Sprites {
  _$_Sprites(
      {this.backDefault,
      this.backShiny,
      this.front_default,
      this.frontShiny,
      this.other,
      this.versions});

  factory _$_Sprites.fromJson(Map<String, dynamic> json) =>
      _$$_SpritesFromJson(json);

  @override
  final String? backDefault;
  @override
  final String? backShiny;
  @override
  final String? front_default;
  @override
  final String? frontShiny;
  @override
  final Other? other;
  @override
  final Versions? versions;

  @override
  String toString() {
    return 'Sprites(backDefault: $backDefault, backShiny: $backShiny, front_default: $front_default, frontShiny: $frontShiny, other: $other, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sprites &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny) &&
            (identical(other.front_default, front_default) ||
                other.front_default == front_default) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.versions, versions) ||
                other.versions == versions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backDefault, backShiny,
      front_default, frontShiny, other, versions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      __$$_SpritesCopyWithImpl<_$_Sprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpritesToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  factory _Sprites(
      {final String? backDefault,
      final String? backShiny,
      final String? front_default,
      final String? frontShiny,
      final Other? other,
      final Versions? versions}) = _$_Sprites;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$_Sprites.fromJson;

  @override
  String? get backDefault;
  @override
  String? get backShiny;
  @override
  String? get front_default;
  @override
  String? get frontShiny;
  @override
  Other? get other;
  @override
  Versions? get versions;
  @override
  @JsonKey(ignore: true)
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      throw _privateConstructorUsedError;
}

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  int? get baseStat => throw _privateConstructorUsedError;
  int? get effort => throw _privateConstructorUsedError;
  Ability? get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call({int? baseStat, int? effort, Ability? stat});

  $AbilityCopyWith<$Res>? get stat;
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? stat = freezed,
  }) {
    return _then(_value.copyWith(
      baseStat: freezed == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int?,
      effort: freezed == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int?,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get stat {
    if (_value.stat == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.stat!, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? baseStat, int? effort, Ability? stat});

  @override
  $AbilityCopyWith<$Res>? get stat;
}

/// @nodoc
class __$$_StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res, _$_Stats>
    implements _$$_StatsCopyWith<$Res> {
  __$$_StatsCopyWithImpl(_$_Stats _value, $Res Function(_$_Stats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? stat = freezed,
  }) {
    return _then(_$_Stats(
      baseStat: freezed == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int?,
      effort: freezed == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int?,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stats implements _Stats {
  _$_Stats({this.baseStat, this.effort, this.stat});

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  final int? baseStat;
  @override
  final int? effort;
  @override
  final Ability? stat;

  @override
  String toString() {
    return 'Stats(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  factory _Stats(
      {final int? baseStat, final int? effort, final Ability? stat}) = _$_Stats;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  int? get baseStat;
  @override
  int? get effort;
  @override
  Ability? get stat;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}
