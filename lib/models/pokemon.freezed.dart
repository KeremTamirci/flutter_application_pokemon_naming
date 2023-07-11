// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  List<Abilities>? get abilities => throw _privateConstructorUsedError;
  int? get baseExperience =>
      throw _privateConstructorUsedError; /*     List<Forms>? forms, */
  List<GameIndices>? get gameIndices => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  List<HeldItems>? get heldItems => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool? get isDefault => throw _privateConstructorUsedError;
  String? get locationAreaEncounters => throw _privateConstructorUsedError;
  List<Moves>? get moves => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get order =>
      throw _privateConstructorUsedError; /*     List<Null>? pastTypes, */
  Ability? get species =>
      throw _privateConstructorUsedError; /*     Sprites? sprites, */
  List<Stats>? get stats => throw _privateConstructorUsedError;
  List<Types>? get types => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {List<Abilities>? abilities,
      int? baseExperience,
      List<GameIndices>? gameIndices,
      int? height,
      List<HeldItems>? heldItems,
      int? id,
      bool? isDefault,
      String? locationAreaEncounters,
      List<Moves>? moves,
      String? name,
      int? order,
      Ability? species,
      List<Stats>? stats,
      List<Types>? types,
      int? weight});

  $AbilityCopyWith<$Res>? get species;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = freezed,
    Object? baseExperience = freezed,
    Object? gameIndices = freezed,
    Object? height = freezed,
    Object? heldItems = freezed,
    Object? id = freezed,
    Object? isDefault = freezed,
    Object? locationAreaEncounters = freezed,
    Object? moves = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? species = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      abilities: freezed == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Abilities>?,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      gameIndices: freezed == gameIndices
          ? _value.gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<GameIndices>?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItems: freezed == heldItems
          ? _value.heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<HeldItems>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      locationAreaEncounters: freezed == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String?,
      moves: freezed == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<Moves>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Ability?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$_PokemonCopyWith(
          _$_Pokemon value, $Res Function(_$_Pokemon) then) =
      __$$_PokemonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Abilities>? abilities,
      int? baseExperience,
      List<GameIndices>? gameIndices,
      int? height,
      List<HeldItems>? heldItems,
      int? id,
      bool? isDefault,
      String? locationAreaEncounters,
      List<Moves>? moves,
      String? name,
      int? order,
      Ability? species,
      List<Stats>? stats,
      List<Types>? types,
      int? weight});

  @override
  $AbilityCopyWith<$Res>? get species;
}

/// @nodoc
class __$$_PokemonCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$_Pokemon>
    implements _$$_PokemonCopyWith<$Res> {
  __$$_PokemonCopyWithImpl(_$_Pokemon _value, $Res Function(_$_Pokemon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = freezed,
    Object? baseExperience = freezed,
    Object? gameIndices = freezed,
    Object? height = freezed,
    Object? heldItems = freezed,
    Object? id = freezed,
    Object? isDefault = freezed,
    Object? locationAreaEncounters = freezed,
    Object? moves = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? species = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_Pokemon(
      abilities: freezed == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Abilities>?,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      gameIndices: freezed == gameIndices
          ? _value._gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<GameIndices>?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItems: freezed == heldItems
          ? _value._heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<HeldItems>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      locationAreaEncounters: freezed == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String?,
      moves: freezed == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<Moves>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Ability?,
      stats: freezed == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  _$_Pokemon(
      {final List<Abilities>? abilities,
      this.baseExperience,
      final List<GameIndices>? gameIndices,
      this.height,
      final List<HeldItems>? heldItems,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      final List<Moves>? moves,
      this.name,
      this.order,
      this.species,
      final List<Stats>? stats,
      final List<Types>? types,
      this.weight})
      : _abilities = abilities,
        _gameIndices = gameIndices,
        _heldItems = heldItems,
        _moves = moves,
        _stats = stats,
        _types = types;

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFromJson(json);

  final List<Abilities>? _abilities;
  @override
  List<Abilities>? get abilities {
    final value = _abilities;
    if (value == null) return null;
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? baseExperience;
/*     List<Forms>? forms, */
  final List<GameIndices>? _gameIndices;
/*     List<Forms>? forms, */
  @override
  List<GameIndices>? get gameIndices {
    final value = _gameIndices;
    if (value == null) return null;
    if (_gameIndices is EqualUnmodifiableListView) return _gameIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? height;
  final List<HeldItems>? _heldItems;
  @override
  List<HeldItems>? get heldItems {
    final value = _heldItems;
    if (value == null) return null;
    if (_heldItems is EqualUnmodifiableListView) return _heldItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  final bool? isDefault;
  @override
  final String? locationAreaEncounters;
  final List<Moves>? _moves;
  @override
  List<Moves>? get moves {
    final value = _moves;
    if (value == null) return null;
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final int? order;
/*     List<Null>? pastTypes, */
  @override
  final Ability? species;
/*     Sprites? sprites, */
  final List<Stats>? _stats;
/*     Sprites? sprites, */
  @override
  List<Stats>? get stats {
    final value = _stats;
    if (value == null) return null;
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Types>? _types;
  @override
  List<Types>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? weight;

  @override
  String toString() {
    return 'Pokemon(abilities: $abilities, baseExperience: $baseExperience, gameIndices: $gameIndices, height: $height, heldItems: $heldItems, id: $id, isDefault: $isDefault, locationAreaEncounters: $locationAreaEncounters, moves: $moves, name: $name, order: $order, species: $species, stats: $stats, types: $types, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemon &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            const DeepCollectionEquality()
                .equals(other._gameIndices, _gameIndices) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._heldItems, _heldItems) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.locationAreaEncounters, locationAreaEncounters) ||
                other.locationAreaEncounters == locationAreaEncounters) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.species, species) || other.species == species) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_abilities),
      baseExperience,
      const DeepCollectionEquality().hash(_gameIndices),
      height,
      const DeepCollectionEquality().hash(_heldItems),
      id,
      isDefault,
      locationAreaEncounters,
      const DeepCollectionEquality().hash(_moves),
      name,
      order,
      species,
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types),
      weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      __$$_PokemonCopyWithImpl<_$_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  factory _Pokemon(
      {final List<Abilities>? abilities,
      final int? baseExperience,
      final List<GameIndices>? gameIndices,
      final int? height,
      final List<HeldItems>? heldItems,
      final int? id,
      final bool? isDefault,
      final String? locationAreaEncounters,
      final List<Moves>? moves,
      final String? name,
      final int? order,
      final Ability? species,
      final List<Stats>? stats,
      final List<Types>? types,
      final int? weight}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  List<Abilities>? get abilities;
  @override
  int? get baseExperience;
  @override /*     List<Forms>? forms, */
  List<GameIndices>? get gameIndices;
  @override
  int? get height;
  @override
  List<HeldItems>? get heldItems;
  @override
  int? get id;
  @override
  bool? get isDefault;
  @override
  String? get locationAreaEncounters;
  @override
  List<Moves>? get moves;
  @override
  String? get name;
  @override
  int? get order;
  @override /*     List<Null>? pastTypes, */
  Ability? get species;
  @override /*     Sprites? sprites, */
  List<Stats>? get stats;
  @override
  List<Types>? get types;
  @override
  int? get weight;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return _Abilities.fromJson(json);
}

/// @nodoc
mixin _$Abilities {
  Ability? get ability => throw _privateConstructorUsedError;
  bool? get isHidden => throw _privateConstructorUsedError;
  int? get slot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilitiesCopyWith<Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitiesCopyWith<$Res> {
  factory $AbilitiesCopyWith(Abilities value, $Res Function(Abilities) then) =
      _$AbilitiesCopyWithImpl<$Res, Abilities>;
  @useResult
  $Res call({Ability? ability, bool? isHidden, int? slot});

  $AbilityCopyWith<$Res>? get ability;
}

/// @nodoc
class _$AbilitiesCopyWithImpl<$Res, $Val extends Abilities>
    implements $AbilitiesCopyWith<$Res> {
  _$AbilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
    Object? isHidden = freezed,
    Object? slot = freezed,
  }) {
    return _then(_value.copyWith(
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get ability {
    if (_value.ability == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.ability!, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbilitiesCopyWith<$Res> implements $AbilitiesCopyWith<$Res> {
  factory _$$_AbilitiesCopyWith(
          _$_Abilities value, $Res Function(_$_Abilities) then) =
      __$$_AbilitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ability? ability, bool? isHidden, int? slot});

  @override
  $AbilityCopyWith<$Res>? get ability;
}

/// @nodoc
class __$$_AbilitiesCopyWithImpl<$Res>
    extends _$AbilitiesCopyWithImpl<$Res, _$_Abilities>
    implements _$$_AbilitiesCopyWith<$Res> {
  __$$_AbilitiesCopyWithImpl(
      _$_Abilities _value, $Res Function(_$_Abilities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
    Object? isHidden = freezed,
    Object? slot = freezed,
  }) {
    return _then(_$_Abilities(
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Abilities implements _Abilities {
  _$_Abilities({this.ability, this.isHidden, this.slot});

  factory _$_Abilities.fromJson(Map<String, dynamic> json) =>
      _$$_AbilitiesFromJson(json);

  @override
  final Ability? ability;
  @override
  final bool? isHidden;
  @override
  final int? slot;

  @override
  String toString() {
    return 'Abilities(ability: $ability, isHidden: $isHidden, slot: $slot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Abilities &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability, isHidden, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilitiesCopyWith<_$_Abilities> get copyWith =>
      __$$_AbilitiesCopyWithImpl<_$_Abilities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilitiesToJson(
      this,
    );
  }
}

abstract class _Abilities implements Abilities {
  factory _Abilities(
      {final Ability? ability,
      final bool? isHidden,
      final int? slot}) = _$_Abilities;

  factory _Abilities.fromJson(Map<String, dynamic> json) =
      _$_Abilities.fromJson;

  @override
  Ability? get ability;
  @override
  bool? get isHidden;
  @override
  int? get slot;
  @override
  @JsonKey(ignore: true)
  _$$_AbilitiesCopyWith<_$_Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return _Ability.fromJson(json);
}

/// @nodoc
mixin _$Ability {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityCopyWith<Ability> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityCopyWith<$Res> {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) then) =
      _$AbilityCopyWithImpl<$Res, Ability>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$AbilityCopyWithImpl<$Res, $Val extends Ability>
    implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$_AbilityCopyWith(
          _$_Ability value, $Res Function(_$_Ability) then) =
      __$$_AbilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_AbilityCopyWithImpl<$Res>
    extends _$AbilityCopyWithImpl<$Res, _$_Ability>
    implements _$$_AbilityCopyWith<$Res> {
  __$$_AbilityCopyWithImpl(_$_Ability _value, $Res Function(_$_Ability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Ability(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ability implements _Ability {
  _$_Ability({this.name, this.url});

  factory _$_Ability.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'Ability(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ability &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilityCopyWith<_$_Ability> get copyWith =>
      __$$_AbilityCopyWithImpl<_$_Ability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityToJson(
      this,
    );
  }
}

abstract class _Ability implements Ability {
  factory _Ability({final String? name, final String? url}) = _$_Ability;

  factory _Ability.fromJson(Map<String, dynamic> json) = _$_Ability.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityCopyWith<_$_Ability> get copyWith =>
      throw _privateConstructorUsedError;
}

GameIndices _$GameIndicesFromJson(Map<String, dynamic> json) {
  return _GameIndices.fromJson(json);
}

/// @nodoc
mixin _$GameIndices {
  int? get gameIndex => throw _privateConstructorUsedError;
  Ability? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameIndicesCopyWith<GameIndices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameIndicesCopyWith<$Res> {
  factory $GameIndicesCopyWith(
          GameIndices value, $Res Function(GameIndices) then) =
      _$GameIndicesCopyWithImpl<$Res, GameIndices>;
  @useResult
  $Res call({int? gameIndex, Ability? version});

  $AbilityCopyWith<$Res>? get version;
}

/// @nodoc
class _$GameIndicesCopyWithImpl<$Res, $Val extends GameIndices>
    implements $GameIndicesCopyWith<$Res> {
  _$GameIndicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameIndex = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      gameIndex: freezed == gameIndex
          ? _value.gameIndex
          : gameIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get version {
    if (_value.version == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.version!, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameIndicesCopyWith<$Res>
    implements $GameIndicesCopyWith<$Res> {
  factory _$$_GameIndicesCopyWith(
          _$_GameIndices value, $Res Function(_$_GameIndices) then) =
      __$$_GameIndicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? gameIndex, Ability? version});

  @override
  $AbilityCopyWith<$Res>? get version;
}

/// @nodoc
class __$$_GameIndicesCopyWithImpl<$Res>
    extends _$GameIndicesCopyWithImpl<$Res, _$_GameIndices>
    implements _$$_GameIndicesCopyWith<$Res> {
  __$$_GameIndicesCopyWithImpl(
      _$_GameIndices _value, $Res Function(_$_GameIndices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameIndex = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_GameIndices(
      gameIndex: freezed == gameIndex
          ? _value.gameIndex
          : gameIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameIndices implements _GameIndices {
  _$_GameIndices({this.gameIndex, this.version});

  factory _$_GameIndices.fromJson(Map<String, dynamic> json) =>
      _$$_GameIndicesFromJson(json);

  @override
  final int? gameIndex;
  @override
  final Ability? version;

  @override
  String toString() {
    return 'GameIndices(gameIndex: $gameIndex, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameIndices &&
            (identical(other.gameIndex, gameIndex) ||
                other.gameIndex == gameIndex) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameIndex, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameIndicesCopyWith<_$_GameIndices> get copyWith =>
      __$$_GameIndicesCopyWithImpl<_$_GameIndices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameIndicesToJson(
      this,
    );
  }
}

abstract class _GameIndices implements GameIndices {
  factory _GameIndices({final int? gameIndex, final Ability? version}) =
      _$_GameIndices;

  factory _GameIndices.fromJson(Map<String, dynamic> json) =
      _$_GameIndices.fromJson;

  @override
  int? get gameIndex;
  @override
  Ability? get version;
  @override
  @JsonKey(ignore: true)
  _$$_GameIndicesCopyWith<_$_GameIndices> get copyWith =>
      throw _privateConstructorUsedError;
}

HeldItems _$HeldItemsFromJson(Map<String, dynamic> json) {
  return _HeldItems.fromJson(json);
}

/// @nodoc
mixin _$HeldItems {
  Ability? get item => throw _privateConstructorUsedError;
  List<VersionDetails>? get versionDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeldItemsCopyWith<HeldItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeldItemsCopyWith<$Res> {
  factory $HeldItemsCopyWith(HeldItems value, $Res Function(HeldItems) then) =
      _$HeldItemsCopyWithImpl<$Res, HeldItems>;
  @useResult
  $Res call({Ability? item, List<VersionDetails>? versionDetails});

  $AbilityCopyWith<$Res>? get item;
}

/// @nodoc
class _$HeldItemsCopyWithImpl<$Res, $Val extends HeldItems>
    implements $HeldItemsCopyWith<$Res> {
  _$HeldItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? versionDetails = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Ability?,
      versionDetails: freezed == versionDetails
          ? _value.versionDetails
          : versionDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionDetails>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HeldItemsCopyWith<$Res> implements $HeldItemsCopyWith<$Res> {
  factory _$$_HeldItemsCopyWith(
          _$_HeldItems value, $Res Function(_$_HeldItems) then) =
      __$$_HeldItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ability? item, List<VersionDetails>? versionDetails});

  @override
  $AbilityCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_HeldItemsCopyWithImpl<$Res>
    extends _$HeldItemsCopyWithImpl<$Res, _$_HeldItems>
    implements _$$_HeldItemsCopyWith<$Res> {
  __$$_HeldItemsCopyWithImpl(
      _$_HeldItems _value, $Res Function(_$_HeldItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? versionDetails = freezed,
  }) {
    return _then(_$_HeldItems(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Ability?,
      versionDetails: freezed == versionDetails
          ? _value._versionDetails
          : versionDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionDetails>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeldItems implements _HeldItems {
  _$_HeldItems({this.item, final List<VersionDetails>? versionDetails})
      : _versionDetails = versionDetails;

  factory _$_HeldItems.fromJson(Map<String, dynamic> json) =>
      _$$_HeldItemsFromJson(json);

  @override
  final Ability? item;
  final List<VersionDetails>? _versionDetails;
  @override
  List<VersionDetails>? get versionDetails {
    final value = _versionDetails;
    if (value == null) return null;
    if (_versionDetails is EqualUnmodifiableListView) return _versionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HeldItems(item: $item, versionDetails: $versionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeldItems &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality()
                .equals(other._versionDetails, _versionDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, item, const DeepCollectionEquality().hash(_versionDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeldItemsCopyWith<_$_HeldItems> get copyWith =>
      __$$_HeldItemsCopyWithImpl<_$_HeldItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeldItemsToJson(
      this,
    );
  }
}

abstract class _HeldItems implements HeldItems {
  factory _HeldItems(
      {final Ability? item,
      final List<VersionDetails>? versionDetails}) = _$_HeldItems;

  factory _HeldItems.fromJson(Map<String, dynamic> json) =
      _$_HeldItems.fromJson;

  @override
  Ability? get item;
  @override
  List<VersionDetails>? get versionDetails;
  @override
  @JsonKey(ignore: true)
  _$$_HeldItemsCopyWith<_$_HeldItems> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionDetails _$VersionDetailsFromJson(Map<String, dynamic> json) {
  return _VersionDetails.fromJson(json);
}

/// @nodoc
mixin _$VersionDetails {
  int? get rarity => throw _privateConstructorUsedError;
  Ability? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionDetailsCopyWith<VersionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionDetailsCopyWith<$Res> {
  factory $VersionDetailsCopyWith(
          VersionDetails value, $Res Function(VersionDetails) then) =
      _$VersionDetailsCopyWithImpl<$Res, VersionDetails>;
  @useResult
  $Res call({int? rarity, Ability? version});

  $AbilityCopyWith<$Res>? get version;
}

/// @nodoc
class _$VersionDetailsCopyWithImpl<$Res, $Val extends VersionDetails>
    implements $VersionDetailsCopyWith<$Res> {
  _$VersionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rarity = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get version {
    if (_value.version == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.version!, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionDetailsCopyWith<$Res>
    implements $VersionDetailsCopyWith<$Res> {
  factory _$$_VersionDetailsCopyWith(
          _$_VersionDetails value, $Res Function(_$_VersionDetails) then) =
      __$$_VersionDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? rarity, Ability? version});

  @override
  $AbilityCopyWith<$Res>? get version;
}

/// @nodoc
class __$$_VersionDetailsCopyWithImpl<$Res>
    extends _$VersionDetailsCopyWithImpl<$Res, _$_VersionDetails>
    implements _$$_VersionDetailsCopyWith<$Res> {
  __$$_VersionDetailsCopyWithImpl(
      _$_VersionDetails _value, $Res Function(_$_VersionDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rarity = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_VersionDetails(
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionDetails implements _VersionDetails {
  _$_VersionDetails({this.rarity, this.version});

  factory _$_VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$$_VersionDetailsFromJson(json);

  @override
  final int? rarity;
  @override
  final Ability? version;

  @override
  String toString() {
    return 'VersionDetails(rarity: $rarity, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionDetails &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rarity, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionDetailsCopyWith<_$_VersionDetails> get copyWith =>
      __$$_VersionDetailsCopyWithImpl<_$_VersionDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionDetailsToJson(
      this,
    );
  }
}

abstract class _VersionDetails implements VersionDetails {
  factory _VersionDetails({final int? rarity, final Ability? version}) =
      _$_VersionDetails;

  factory _VersionDetails.fromJson(Map<String, dynamic> json) =
      _$_VersionDetails.fromJson;

  @override
  int? get rarity;
  @override
  Ability? get version;
  @override
  @JsonKey(ignore: true)
  _$$_VersionDetailsCopyWith<_$_VersionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Moves _$MovesFromJson(Map<String, dynamic> json) {
  return _Moves.fromJson(json);
}

/// @nodoc
mixin _$Moves {
  Ability? get move => throw _privateConstructorUsedError;
  List<VersionGroupDetails>? get versionGroupDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovesCopyWith<Moves> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovesCopyWith<$Res> {
  factory $MovesCopyWith(Moves value, $Res Function(Moves) then) =
      _$MovesCopyWithImpl<$Res, Moves>;
  @useResult
  $Res call({Ability? move, List<VersionGroupDetails>? versionGroupDetails});

  $AbilityCopyWith<$Res>? get move;
}

/// @nodoc
class _$MovesCopyWithImpl<$Res, $Val extends Moves>
    implements $MovesCopyWith<$Res> {
  _$MovesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = freezed,
    Object? versionGroupDetails = freezed,
  }) {
    return _then(_value.copyWith(
      move: freezed == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Ability?,
      versionGroupDetails: freezed == versionGroupDetails
          ? _value.versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionGroupDetails>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get move {
    if (_value.move == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.move!, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovesCopyWith<$Res> implements $MovesCopyWith<$Res> {
  factory _$$_MovesCopyWith(_$_Moves value, $Res Function(_$_Moves) then) =
      __$$_MovesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ability? move, List<VersionGroupDetails>? versionGroupDetails});

  @override
  $AbilityCopyWith<$Res>? get move;
}

/// @nodoc
class __$$_MovesCopyWithImpl<$Res> extends _$MovesCopyWithImpl<$Res, _$_Moves>
    implements _$$_MovesCopyWith<$Res> {
  __$$_MovesCopyWithImpl(_$_Moves _value, $Res Function(_$_Moves) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = freezed,
    Object? versionGroupDetails = freezed,
  }) {
    return _then(_$_Moves(
      move: freezed == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Ability?,
      versionGroupDetails: freezed == versionGroupDetails
          ? _value._versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionGroupDetails>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Moves implements _Moves {
  _$_Moves({this.move, final List<VersionGroupDetails>? versionGroupDetails})
      : _versionGroupDetails = versionGroupDetails;

  factory _$_Moves.fromJson(Map<String, dynamic> json) =>
      _$$_MovesFromJson(json);

  @override
  final Ability? move;
  final List<VersionGroupDetails>? _versionGroupDetails;
  @override
  List<VersionGroupDetails>? get versionGroupDetails {
    final value = _versionGroupDetails;
    if (value == null) return null;
    if (_versionGroupDetails is EqualUnmodifiableListView)
      return _versionGroupDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Moves(move: $move, versionGroupDetails: $versionGroupDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Moves &&
            (identical(other.move, move) || other.move == move) &&
            const DeepCollectionEquality()
                .equals(other._versionGroupDetails, _versionGroupDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move,
      const DeepCollectionEquality().hash(_versionGroupDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovesCopyWith<_$_Moves> get copyWith =>
      __$$_MovesCopyWithImpl<_$_Moves>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovesToJson(
      this,
    );
  }
}

abstract class _Moves implements Moves {
  factory _Moves(
      {final Ability? move,
      final List<VersionGroupDetails>? versionGroupDetails}) = _$_Moves;

  factory _Moves.fromJson(Map<String, dynamic> json) = _$_Moves.fromJson;

  @override
  Ability? get move;
  @override
  List<VersionGroupDetails>? get versionGroupDetails;
  @override
  @JsonKey(ignore: true)
  _$$_MovesCopyWith<_$_Moves> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionGroupDetails _$VersionGroupDetailsFromJson(Map<String, dynamic> json) {
  return _VersionGroupDetails.fromJson(json);
}

/// @nodoc
mixin _$VersionGroupDetails {
  int? get levelLearnedAt => throw _privateConstructorUsedError;
  Ability? get moveLearnMethod => throw _privateConstructorUsedError;
  Ability? get versionGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionGroupDetailsCopyWith<VersionGroupDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionGroupDetailsCopyWith<$Res> {
  factory $VersionGroupDetailsCopyWith(
          VersionGroupDetails value, $Res Function(VersionGroupDetails) then) =
      _$VersionGroupDetailsCopyWithImpl<$Res, VersionGroupDetails>;
  @useResult
  $Res call(
      {int? levelLearnedAt, Ability? moveLearnMethod, Ability? versionGroup});

  $AbilityCopyWith<$Res>? get moveLearnMethod;
  $AbilityCopyWith<$Res>? get versionGroup;
}

/// @nodoc
class _$VersionGroupDetailsCopyWithImpl<$Res, $Val extends VersionGroupDetails>
    implements $VersionGroupDetailsCopyWith<$Res> {
  _$VersionGroupDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = freezed,
    Object? moveLearnMethod = freezed,
    Object? versionGroup = freezed,
  }) {
    return _then(_value.copyWith(
      levelLearnedAt: freezed == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      moveLearnMethod: freezed == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as Ability?,
      versionGroup: freezed == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get moveLearnMethod {
    if (_value.moveLearnMethod == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.moveLearnMethod!, (value) {
      return _then(_value.copyWith(moveLearnMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get versionGroup {
    if (_value.versionGroup == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.versionGroup!, (value) {
      return _then(_value.copyWith(versionGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionGroupDetailsCopyWith<$Res>
    implements $VersionGroupDetailsCopyWith<$Res> {
  factory _$$_VersionGroupDetailsCopyWith(_$_VersionGroupDetails value,
          $Res Function(_$_VersionGroupDetails) then) =
      __$$_VersionGroupDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? levelLearnedAt, Ability? moveLearnMethod, Ability? versionGroup});

  @override
  $AbilityCopyWith<$Res>? get moveLearnMethod;
  @override
  $AbilityCopyWith<$Res>? get versionGroup;
}

/// @nodoc
class __$$_VersionGroupDetailsCopyWithImpl<$Res>
    extends _$VersionGroupDetailsCopyWithImpl<$Res, _$_VersionGroupDetails>
    implements _$$_VersionGroupDetailsCopyWith<$Res> {
  __$$_VersionGroupDetailsCopyWithImpl(_$_VersionGroupDetails _value,
      $Res Function(_$_VersionGroupDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = freezed,
    Object? moveLearnMethod = freezed,
    Object? versionGroup = freezed,
  }) {
    return _then(_$_VersionGroupDetails(
      levelLearnedAt: freezed == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      moveLearnMethod: freezed == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as Ability?,
      versionGroup: freezed == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionGroupDetails implements _VersionGroupDetails {
  _$_VersionGroupDetails(
      {this.levelLearnedAt, this.moveLearnMethod, this.versionGroup});

  factory _$_VersionGroupDetails.fromJson(Map<String, dynamic> json) =>
      _$$_VersionGroupDetailsFromJson(json);

  @override
  final int? levelLearnedAt;
  @override
  final Ability? moveLearnMethod;
  @override
  final Ability? versionGroup;

  @override
  String toString() {
    return 'VersionGroupDetails(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionGroupDetails &&
            (identical(other.levelLearnedAt, levelLearnedAt) ||
                other.levelLearnedAt == levelLearnedAt) &&
            (identical(other.moveLearnMethod, moveLearnMethod) ||
                other.moveLearnMethod == moveLearnMethod) &&
            (identical(other.versionGroup, versionGroup) ||
                other.versionGroup == versionGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, levelLearnedAt, moveLearnMethod, versionGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionGroupDetailsCopyWith<_$_VersionGroupDetails> get copyWith =>
      __$$_VersionGroupDetailsCopyWithImpl<_$_VersionGroupDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionGroupDetailsToJson(
      this,
    );
  }
}

abstract class _VersionGroupDetails implements VersionGroupDetails {
  factory _VersionGroupDetails(
      {final int? levelLearnedAt,
      final Ability? moveLearnMethod,
      final Ability? versionGroup}) = _$_VersionGroupDetails;

  factory _VersionGroupDetails.fromJson(Map<String, dynamic> json) =
      _$_VersionGroupDetails.fromJson;

  @override
  int? get levelLearnedAt;
  @override
  Ability? get moveLearnMethod;
  @override
  Ability? get versionGroup;
  @override
  @JsonKey(ignore: true)
  _$$_VersionGroupDetailsCopyWith<_$_VersionGroupDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Other _$OtherFromJson(Map<String, dynamic> json) {
  return _Other.fromJson(json);
}

/// @nodoc
mixin _$Other {
  DreamWorld? get dreamWorld =>
      throw _privateConstructorUsedError; /*  Home? home, */
  OfficialArtwork? get officialArtwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherCopyWith<Other> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCopyWith<$Res> {
  factory $OtherCopyWith(Other value, $Res Function(Other) then) =
      _$OtherCopyWithImpl<$Res, Other>;
  @useResult
  $Res call({DreamWorld? dreamWorld, OfficialArtwork? officialArtwork});

  $DreamWorldCopyWith<$Res>? get dreamWorld;
  $OfficialArtworkCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class _$OtherCopyWithImpl<$Res, $Val extends Other>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamWorld = freezed,
    Object? officialArtwork = freezed,
  }) {
    return _then(_value.copyWith(
      dreamWorld: freezed == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as DreamWorld?,
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamWorldCopyWith<$Res>? get dreamWorld {
    if (_value.dreamWorld == null) {
      return null;
    }

    return $DreamWorldCopyWith<$Res>(_value.dreamWorld!, (value) {
      return _then(_value.copyWith(dreamWorld: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_value.officialArtwork == null) {
      return null;
    }

    return $OfficialArtworkCopyWith<$Res>(_value.officialArtwork!, (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OtherCopyWith<$Res> implements $OtherCopyWith<$Res> {
  factory _$$_OtherCopyWith(_$_Other value, $Res Function(_$_Other) then) =
      __$$_OtherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DreamWorld? dreamWorld, OfficialArtwork? officialArtwork});

  @override
  $DreamWorldCopyWith<$Res>? get dreamWorld;
  @override
  $OfficialArtworkCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class __$$_OtherCopyWithImpl<$Res> extends _$OtherCopyWithImpl<$Res, _$_Other>
    implements _$$_OtherCopyWith<$Res> {
  __$$_OtherCopyWithImpl(_$_Other _value, $Res Function(_$_Other) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamWorld = freezed,
    Object? officialArtwork = freezed,
  }) {
    return _then(_$_Other(
      dreamWorld: freezed == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as DreamWorld?,
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Other implements _Other {
  _$_Other({this.dreamWorld, this.officialArtwork});

  factory _$_Other.fromJson(Map<String, dynamic> json) =>
      _$$_OtherFromJson(json);

  @override
  final DreamWorld? dreamWorld;
/*  Home? home, */
  @override
  final OfficialArtwork? officialArtwork;

  @override
  String toString() {
    return 'Other(dreamWorld: $dreamWorld, officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Other &&
            (identical(other.dreamWorld, dreamWorld) ||
                other.dreamWorld == dreamWorld) &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dreamWorld, officialArtwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      __$$_OtherCopyWithImpl<_$_Other>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherToJson(
      this,
    );
  }
}

abstract class _Other implements Other {
  factory _Other(
      {final DreamWorld? dreamWorld,
      final OfficialArtwork? officialArtwork}) = _$_Other;

  factory _Other.fromJson(Map<String, dynamic> json) = _$_Other.fromJson;

  @override
  DreamWorld? get dreamWorld;
  @override /*  Home? home, */
  OfficialArtwork? get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      throw _privateConstructorUsedError;
}

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) {
  return _DreamWorld.fromJson(json);
}

/// @nodoc
mixin _$DreamWorld {
  String? get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DreamWorldCopyWith<DreamWorld> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamWorldCopyWith<$Res> {
  factory $DreamWorldCopyWith(
          DreamWorld value, $Res Function(DreamWorld) then) =
      _$DreamWorldCopyWithImpl<$Res, DreamWorld>;
  @useResult
  $Res call({String? frontDefault});
}

/// @nodoc
class _$DreamWorldCopyWithImpl<$Res, $Val extends DreamWorld>
    implements $DreamWorldCopyWith<$Res> {
  _$DreamWorldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DreamWorldCopyWith<$Res>
    implements $DreamWorldCopyWith<$Res> {
  factory _$$_DreamWorldCopyWith(
          _$_DreamWorld value, $Res Function(_$_DreamWorld) then) =
      __$$_DreamWorldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? frontDefault});
}

/// @nodoc
class __$$_DreamWorldCopyWithImpl<$Res>
    extends _$DreamWorldCopyWithImpl<$Res, _$_DreamWorld>
    implements _$$_DreamWorldCopyWith<$Res> {
  __$$_DreamWorldCopyWithImpl(
      _$_DreamWorld _value, $Res Function(_$_DreamWorld) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_$_DreamWorld(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DreamWorld implements _DreamWorld {
  _$_DreamWorld({this.frontDefault});

  factory _$_DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$$_DreamWorldFromJson(json);

  @override
  final String? frontDefault;

  @override
  String toString() {
    return 'DreamWorld(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DreamWorld &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DreamWorldCopyWith<_$_DreamWorld> get copyWith =>
      __$$_DreamWorldCopyWithImpl<_$_DreamWorld>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DreamWorldToJson(
      this,
    );
  }
}

abstract class _DreamWorld implements DreamWorld {
  factory _DreamWorld({final String? frontDefault}) = _$_DreamWorld;

  factory _DreamWorld.fromJson(Map<String, dynamic> json) =
      _$_DreamWorld.fromJson;

  @override
  String? get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$_DreamWorldCopyWith<_$_DreamWorld> get copyWith =>
      throw _privateConstructorUsedError;
}

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return _OfficialArtwork.fromJson(json);
}

/// @nodoc
mixin _$OfficialArtwork {
  String? get frontDefault => throw _privateConstructorUsedError;
  String? get frontShiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficialArtworkCopyWith<OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialArtworkCopyWith<$Res> {
  factory $OfficialArtworkCopyWith(
          OfficialArtwork value, $Res Function(OfficialArtwork) then) =
      _$OfficialArtworkCopyWithImpl<$Res, OfficialArtwork>;
  @useResult
  $Res call({String? frontDefault, String? frontShiny});
}

/// @nodoc
class _$OfficialArtworkCopyWithImpl<$Res, $Val extends OfficialArtwork>
    implements $OfficialArtworkCopyWith<$Res> {
  _$OfficialArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfficialArtworkCopyWith<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  factory _$$_OfficialArtworkCopyWith(
          _$_OfficialArtwork value, $Res Function(_$_OfficialArtwork) then) =
      __$$_OfficialArtworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? frontDefault, String? frontShiny});
}

/// @nodoc
class __$$_OfficialArtworkCopyWithImpl<$Res>
    extends _$OfficialArtworkCopyWithImpl<$Res, _$_OfficialArtwork>
    implements _$$_OfficialArtworkCopyWith<$Res> {
  __$$_OfficialArtworkCopyWithImpl(
      _$_OfficialArtwork _value, $Res Function(_$_OfficialArtwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_$_OfficialArtwork(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfficialArtwork implements _OfficialArtwork {
  _$_OfficialArtwork({this.frontDefault, this.frontShiny});

  factory _$_OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$$_OfficialArtworkFromJson(json);

  @override
  final String? frontDefault;
  @override
  final String? frontShiny;

  @override
  String toString() {
    return 'OfficialArtwork(frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfficialArtwork &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontShiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfficialArtworkCopyWith<_$_OfficialArtwork> get copyWith =>
      __$$_OfficialArtworkCopyWithImpl<_$_OfficialArtwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfficialArtworkToJson(
      this,
    );
  }
}

abstract class _OfficialArtwork implements OfficialArtwork {
  factory _OfficialArtwork(
      {final String? frontDefault,
      final String? frontShiny}) = _$_OfficialArtwork;

  factory _OfficialArtwork.fromJson(Map<String, dynamic> json) =
      _$_OfficialArtwork.fromJson;

  @override
  String? get frontDefault;
  @override
  String? get frontShiny;
  @override
  @JsonKey(ignore: true)
  _$$_OfficialArtworkCopyWith<_$_OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

Versions _$VersionsFromJson(Map<String, dynamic> json) {
  return _Versions.fromJson(json);
}

/// @nodoc
mixin _$Versions {
  GenerationI? get generationI => throw _privateConstructorUsedError;
  GenerationI? get generationIi => throw _privateConstructorUsedError;
  GenerationI? get generationIii => throw _privateConstructorUsedError;
  GenerationI? get generationIv => throw _privateConstructorUsedError;
  GenerationI? get generationV => throw _privateConstructorUsedError;
  GenerationI? get generationVi => throw _privateConstructorUsedError;
  GenerationI? get generationVii => throw _privateConstructorUsedError;
  GenerationI? get generationViii => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsCopyWith<Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsCopyWith<$Res> {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) then) =
      _$VersionsCopyWithImpl<$Res, Versions>;
  @useResult
  $Res call(
      {GenerationI? generationI,
      GenerationI? generationIi,
      GenerationI? generationIii,
      GenerationI? generationIv,
      GenerationI? generationV,
      GenerationI? generationVi,
      GenerationI? generationVii,
      GenerationI? generationViii});

  $GenerationICopyWith<$Res>? get generationI;
  $GenerationICopyWith<$Res>? get generationIi;
  $GenerationICopyWith<$Res>? get generationIii;
  $GenerationICopyWith<$Res>? get generationIv;
  $GenerationICopyWith<$Res>? get generationV;
  $GenerationICopyWith<$Res>? get generationVi;
  $GenerationICopyWith<$Res>? get generationVii;
  $GenerationICopyWith<$Res>? get generationViii;
}

/// @nodoc
class _$VersionsCopyWithImpl<$Res, $Val extends Versions>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generationI = freezed,
    Object? generationIi = freezed,
    Object? generationIii = freezed,
    Object? generationIv = freezed,
    Object? generationV = freezed,
    Object? generationVi = freezed,
    Object? generationVii = freezed,
    Object? generationViii = freezed,
  }) {
    return _then(_value.copyWith(
      generationI: freezed == generationI
          ? _value.generationI
          : generationI // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationIi: freezed == generationIi
          ? _value.generationIi
          : generationIi // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationIii: freezed == generationIii
          ? _value.generationIii
          : generationIii // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationIv: freezed == generationIv
          ? _value.generationIv
          : generationIv // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationV: freezed == generationV
          ? _value.generationV
          : generationV // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationVi: freezed == generationVi
          ? _value.generationVi
          : generationVi // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationVii: freezed == generationVii
          ? _value.generationVii
          : generationVii // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationViii: freezed == generationViii
          ? _value.generationViii
          : generationViii // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationI {
    if (_value.generationI == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationI!, (value) {
      return _then(_value.copyWith(generationI: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationIi {
    if (_value.generationIi == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationIi!, (value) {
      return _then(_value.copyWith(generationIi: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationIii {
    if (_value.generationIii == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationIii!, (value) {
      return _then(_value.copyWith(generationIii: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationIv {
    if (_value.generationIv == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationIv!, (value) {
      return _then(_value.copyWith(generationIv: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationV {
    if (_value.generationV == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationV!, (value) {
      return _then(_value.copyWith(generationV: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationVi {
    if (_value.generationVi == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationVi!, (value) {
      return _then(_value.copyWith(generationVi: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationVii {
    if (_value.generationVii == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationVii!, (value) {
      return _then(_value.copyWith(generationVii: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res>? get generationViii {
    if (_value.generationViii == null) {
      return null;
    }

    return $GenerationICopyWith<$Res>(_value.generationViii!, (value) {
      return _then(_value.copyWith(generationViii: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionsCopyWith<$Res> implements $VersionsCopyWith<$Res> {
  factory _$$_VersionsCopyWith(
          _$_Versions value, $Res Function(_$_Versions) then) =
      __$$_VersionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GenerationI? generationI,
      GenerationI? generationIi,
      GenerationI? generationIii,
      GenerationI? generationIv,
      GenerationI? generationV,
      GenerationI? generationVi,
      GenerationI? generationVii,
      GenerationI? generationViii});

  @override
  $GenerationICopyWith<$Res>? get generationI;
  @override
  $GenerationICopyWith<$Res>? get generationIi;
  @override
  $GenerationICopyWith<$Res>? get generationIii;
  @override
  $GenerationICopyWith<$Res>? get generationIv;
  @override
  $GenerationICopyWith<$Res>? get generationV;
  @override
  $GenerationICopyWith<$Res>? get generationVi;
  @override
  $GenerationICopyWith<$Res>? get generationVii;
  @override
  $GenerationICopyWith<$Res>? get generationViii;
}

/// @nodoc
class __$$_VersionsCopyWithImpl<$Res>
    extends _$VersionsCopyWithImpl<$Res, _$_Versions>
    implements _$$_VersionsCopyWith<$Res> {
  __$$_VersionsCopyWithImpl(
      _$_Versions _value, $Res Function(_$_Versions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generationI = freezed,
    Object? generationIi = freezed,
    Object? generationIii = freezed,
    Object? generationIv = freezed,
    Object? generationV = freezed,
    Object? generationVi = freezed,
    Object? generationVii = freezed,
    Object? generationViii = freezed,
  }) {
    return _then(_$_Versions(
      generationI: freezed == generationI
          ? _value.generationI
          : generationI // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationIi: freezed == generationIi
          ? _value.generationIi
          : generationIi // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationIii: freezed == generationIii
          ? _value.generationIii
          : generationIii // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationIv: freezed == generationIv
          ? _value.generationIv
          : generationIv // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationV: freezed == generationV
          ? _value.generationV
          : generationV // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationVi: freezed == generationVi
          ? _value.generationVi
          : generationVi // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationVii: freezed == generationVii
          ? _value.generationVii
          : generationVii // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
      generationViii: freezed == generationViii
          ? _value.generationViii
          : generationViii // ignore: cast_nullable_to_non_nullable
              as GenerationI?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Versions implements _Versions {
  _$_Versions(
      {this.generationI,
      this.generationIi,
      this.generationIii,
      this.generationIv,
      this.generationV,
      this.generationVi,
      this.generationVii,
      this.generationViii});

  factory _$_Versions.fromJson(Map<String, dynamic> json) =>
      _$$_VersionsFromJson(json);

  @override
  final GenerationI? generationI;
  @override
  final GenerationI? generationIi;
  @override
  final GenerationI? generationIii;
  @override
  final GenerationI? generationIv;
  @override
  final GenerationI? generationV;
  @override
  final GenerationI? generationVi;
  @override
  final GenerationI? generationVii;
  @override
  final GenerationI? generationViii;

  @override
  String toString() {
    return 'Versions(generationI: $generationI, generationIi: $generationIi, generationIii: $generationIii, generationIv: $generationIv, generationV: $generationV, generationVi: $generationVi, generationVii: $generationVii, generationViii: $generationViii)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Versions &&
            (identical(other.generationI, generationI) ||
                other.generationI == generationI) &&
            (identical(other.generationIi, generationIi) ||
                other.generationIi == generationIi) &&
            (identical(other.generationIii, generationIii) ||
                other.generationIii == generationIii) &&
            (identical(other.generationIv, generationIv) ||
                other.generationIv == generationIv) &&
            (identical(other.generationV, generationV) ||
                other.generationV == generationV) &&
            (identical(other.generationVi, generationVi) ||
                other.generationVi == generationVi) &&
            (identical(other.generationVii, generationVii) ||
                other.generationVii == generationVii) &&
            (identical(other.generationViii, generationViii) ||
                other.generationViii == generationViii));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      generationI,
      generationIi,
      generationIii,
      generationIv,
      generationV,
      generationVi,
      generationVii,
      generationViii);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      __$$_VersionsCopyWithImpl<_$_Versions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionsToJson(
      this,
    );
  }
}

abstract class _Versions implements Versions {
  factory _Versions(
      {final GenerationI? generationI,
      final GenerationI? generationIi,
      final GenerationI? generationIii,
      final GenerationI? generationIv,
      final GenerationI? generationV,
      final GenerationI? generationVi,
      final GenerationI? generationVii,
      final GenerationI? generationViii}) = _$_Versions;

  factory _Versions.fromJson(Map<String, dynamic> json) = _$_Versions.fromJson;

  @override
  GenerationI? get generationI;
  @override
  GenerationI? get generationIi;
  @override
  GenerationI? get generationIii;
  @override
  GenerationI? get generationIv;
  @override
  GenerationI? get generationV;
  @override
  GenerationI? get generationVi;
  @override
  GenerationI? get generationVii;
  @override
  GenerationI? get generationViii;
  @override
  @JsonKey(ignore: true)
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

GenerationI _$GenerationIFromJson(Map<String, dynamic> json) {
  return _GenerationI.fromJson(json);
}

/// @nodoc
mixin _$GenerationI {
  Other? get redBlue => throw _privateConstructorUsedError;
  Other? get yellow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationICopyWith<GenerationI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationICopyWith<$Res> {
  factory $GenerationICopyWith(
          GenerationI value, $Res Function(GenerationI) then) =
      _$GenerationICopyWithImpl<$Res, GenerationI>;
  @useResult
  $Res call({Other? redBlue, Other? yellow});

  $OtherCopyWith<$Res>? get redBlue;
  $OtherCopyWith<$Res>? get yellow;
}

/// @nodoc
class _$GenerationICopyWithImpl<$Res, $Val extends GenerationI>
    implements $GenerationICopyWith<$Res> {
  _$GenerationICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redBlue = freezed,
    Object? yellow = freezed,
  }) {
    return _then(_value.copyWith(
      redBlue: freezed == redBlue
          ? _value.redBlue
          : redBlue // ignore: cast_nullable_to_non_nullable
              as Other?,
      yellow: freezed == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as Other?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherCopyWith<$Res>? get redBlue {
    if (_value.redBlue == null) {
      return null;
    }

    return $OtherCopyWith<$Res>(_value.redBlue!, (value) {
      return _then(_value.copyWith(redBlue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherCopyWith<$Res>? get yellow {
    if (_value.yellow == null) {
      return null;
    }

    return $OtherCopyWith<$Res>(_value.yellow!, (value) {
      return _then(_value.copyWith(yellow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationICopyWith<$Res>
    implements $GenerationICopyWith<$Res> {
  factory _$$_GenerationICopyWith(
          _$_GenerationI value, $Res Function(_$_GenerationI) then) =
      __$$_GenerationICopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Other? redBlue, Other? yellow});

  @override
  $OtherCopyWith<$Res>? get redBlue;
  @override
  $OtherCopyWith<$Res>? get yellow;
}

/// @nodoc
class __$$_GenerationICopyWithImpl<$Res>
    extends _$GenerationICopyWithImpl<$Res, _$_GenerationI>
    implements _$$_GenerationICopyWith<$Res> {
  __$$_GenerationICopyWithImpl(
      _$_GenerationI _value, $Res Function(_$_GenerationI) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redBlue = freezed,
    Object? yellow = freezed,
  }) {
    return _then(_$_GenerationI(
      redBlue: freezed == redBlue
          ? _value.redBlue
          : redBlue // ignore: cast_nullable_to_non_nullable
              as Other?,
      yellow: freezed == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as Other?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationI implements _GenerationI {
  _$_GenerationI({this.redBlue, this.yellow});

  factory _$_GenerationI.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationIFromJson(json);

  @override
  final Other? redBlue;
  @override
  final Other? yellow;

  @override
  String toString() {
    return 'GenerationI(redBlue: $redBlue, yellow: $yellow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationI &&
            (identical(other.redBlue, redBlue) || other.redBlue == redBlue) &&
            (identical(other.yellow, yellow) || other.yellow == yellow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redBlue, yellow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationICopyWith<_$_GenerationI> get copyWith =>
      __$$_GenerationICopyWithImpl<_$_GenerationI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationIToJson(
      this,
    );
  }
}

abstract class _GenerationI implements GenerationI {
  factory _GenerationI({final Other? redBlue, final Other? yellow}) =
      _$_GenerationI;

  factory _GenerationI.fromJson(Map<String, dynamic> json) =
      _$_GenerationI.fromJson;

  @override
  Other? get redBlue;
  @override
  Other? get yellow;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationICopyWith<_$_GenerationI> get copyWith =>
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

Types _$TypesFromJson(Map<String, dynamic> json) {
  return _Types.fromJson(json);
}

/// @nodoc
mixin _$Types {
  int? get slot => throw _privateConstructorUsedError;
  Ability? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypesCopyWith<Types> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesCopyWith<$Res> {
  factory $TypesCopyWith(Types value, $Res Function(Types) then) =
      _$TypesCopyWithImpl<$Res, Types>;
  @useResult
  $Res call({int? slot, Ability? type});

  $AbilityCopyWith<$Res>? get type;
}

/// @nodoc
class _$TypesCopyWithImpl<$Res, $Val extends Types>
    implements $TypesCopyWith<$Res> {
  _$TypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TypesCopyWith<$Res> implements $TypesCopyWith<$Res> {
  factory _$$_TypesCopyWith(_$_Types value, $Res Function(_$_Types) then) =
      __$$_TypesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? slot, Ability? type});

  @override
  $AbilityCopyWith<$Res>? get type;
}

/// @nodoc
class __$$_TypesCopyWithImpl<$Res> extends _$TypesCopyWithImpl<$Res, _$_Types>
    implements _$$_TypesCopyWith<$Res> {
  __$$_TypesCopyWithImpl(_$_Types _value, $Res Function(_$_Types) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Types(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Types implements _Types {
  _$_Types({this.slot, this.type});

  factory _$_Types.fromJson(Map<String, dynamic> json) =>
      _$$_TypesFromJson(json);

  @override
  final int? slot;
  @override
  final Ability? type;

  @override
  String toString() {
    return 'Types(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Types &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypesCopyWith<_$_Types> get copyWith =>
      __$$_TypesCopyWithImpl<_$_Types>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypesToJson(
      this,
    );
  }
}

abstract class _Types implements Types {
  factory _Types({final int? slot, final Ability? type}) = _$_Types;

  factory _Types.fromJson(Map<String, dynamic> json) = _$_Types.fromJson;

  @override
  int? get slot;
  @override
  Ability? get type;
  @override
  @JsonKey(ignore: true)
  _$$_TypesCopyWith<_$_Types> get copyWith =>
      throw _privateConstructorUsedError;
}
