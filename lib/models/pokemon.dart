import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    List<Abilities>? abilities,
    int? baseExperience,

/*     List<Forms>? forms, */

    List<GameIndices>? gameIndices,
    int? height,
    List<HeldItems>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Moves>? moves,
    String? name,
    int? order,

/*     List<Null>? pastTypes, */

    Ability? species,

/*     Sprites? sprites, */

    List<Stats>? stats,
    List<Types>? types,
    int? weight,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
class Abilities with _$Abilities {
  factory Abilities({
    Ability? ability,
    bool? isHidden,
    int? slot,
  }) = _Abilities;

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);
}

@freezed
class Ability with _$Ability {
  factory Ability({
    String? name,
    String? url,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}

@freezed
class GameIndices with _$GameIndices {
  factory GameIndices({
    int? gameIndex,
    Ability? version,
  }) = _GameIndices;

  factory GameIndices.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesFromJson(json);
}

@freezed
class HeldItems with _$HeldItems {
  factory HeldItems({
    Ability? item,
    List<VersionDetails>? versionDetails,
  }) = _HeldItems;

  factory HeldItems.fromJson(Map<String, dynamic> json) =>
      _$HeldItemsFromJson(json);
}

@freezed
class VersionDetails with _$VersionDetails {
  factory VersionDetails({
    int? rarity,
    Ability? version,
  }) = _VersionDetails;

  factory VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailsFromJson(json);
}

@freezed
class Moves with _$Moves {
  factory Moves({
    Ability? move,
    List<VersionGroupDetails>? versionGroupDetails,
  }) = _Moves;

  factory Moves.fromJson(Map<String, dynamic> json) => _$MovesFromJson(json);
}

@freezed
class VersionGroupDetails with _$VersionGroupDetails {
  factory VersionGroupDetails({
    int? levelLearnedAt,
    Ability? moveLearnMethod,
    Ability? versionGroup,
  }) = _VersionGroupDetails;

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailsFromJson(json);
}

/* @freezed

class Sprites with _$Sprites {

  factory Sprites({

    String? backDefault,

/*     Null? backFemale, */

    String? backShiny,

    Null? backShinyFemale,

    String? frontDefault,

    Null? frontFemale,

    String? frontShiny,

    Null? frontShinyFemale,

    Other? other,

    Versions? versions,

  }) = _Sprites;




  factory Sprites.fromJson(Map<String, dynamic> json) =>

      _$SpritesFromJson(json);

} */

@freezed
class Other with _$Other {
  factory Other({
    DreamWorld? dreamWorld,

    /*  Home? home, */

    OfficialArtwork? officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}

@freezed
class DreamWorld with _$DreamWorld {
  factory DreamWorld({
    String? frontDefault,

/*     Null? frontFemale, */
  }) = _DreamWorld;

  factory DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldFromJson(json);
}

/* @freezed

class Home with _$Home {

  factory Home({

    String? frontDefault,

/*     Null? frontFemale, */

    String? frontShiny,

    Null? frontShinyFemale,

  }) = _Home;




  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

} */

@freezed
class OfficialArtwork with _$OfficialArtwork {
  factory OfficialArtwork({
    String? frontDefault,
    String? frontShiny,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}

@freezed
class Versions with _$Versions {
  factory Versions({
    GenerationI? generationI,
    GenerationI? generationIi,
    GenerationI? generationIii,
    GenerationI? generationIv,
    GenerationI? generationV,
    GenerationI? generationVi,
    GenerationI? generationVii,
    GenerationI? generationViii,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);
}

@freezed
class GenerationI with _$GenerationI {
  factory GenerationI({
    Other? redBlue,
    Other? yellow,
  }) = _GenerationI;

  factory GenerationI.fromJson(Map<String, dynamic> json) =>
      _$GenerationIFromJson(json);
}

// Define classes GenerationIi, GenerationIii, ..., GenerationVii, GenerationViii in a similar manner as GenerationI.

@freezed
class Stats with _$Stats {
  factory Stats({
    int? baseStat,
    int? effort,
    Ability? stat,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

@freezed
class Types with _$Types {
  factory Types({
    int? slot,
    Ability? type,
  }) = _Types;

  factory Types.fromJson(Map<String, dynamic> json) => _$TypesFromJson(json);
}
