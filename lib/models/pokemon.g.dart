// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$$_PokemonFromJson(Map<String, dynamic> json) => _$_Pokemon(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: json['baseExperience'] as int?,
      gameIndices: (json['gameIndices'] as List<dynamic>?)
          ?.map((e) => GameIndices.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int?,
      heldItems: (json['heldItems'] as List<dynamic>?)
          ?.map((e) => HeldItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      isDefault: json['isDefault'] as bool?,
      locationAreaEncounters: json['locationAreaEncounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => Moves.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: json['order'] as int?,
      species: json['species'] == null
          ? null
          : Ability.fromJson(json['species'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'baseExperience': instance.baseExperience,
      'gameIndices': instance.gameIndices,
      'height': instance.height,
      'heldItems': instance.heldItems,
      'id': instance.id,
      'isDefault': instance.isDefault,
      'locationAreaEncounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'species': instance.species,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

_$_Abilities _$$_AbilitiesFromJson(Map<String, dynamic> json) => _$_Abilities(
      ability: json['ability'] == null
          ? null
          : Ability.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool?,
      slot: json['slot'] as int?,
    );

Map<String, dynamic> _$$_AbilitiesToJson(_$_Abilities instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };

_$_Ability _$$_AbilityFromJson(Map<String, dynamic> json) => _$_Ability(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$_GameIndices _$$_GameIndicesFromJson(Map<String, dynamic> json) =>
    _$_GameIndices(
      gameIndex: json['gameIndex'] as int?,
      version: json['version'] == null
          ? null
          : Ability.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameIndicesToJson(_$_GameIndices instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version,
    };

_$_HeldItems _$$_HeldItemsFromJson(Map<String, dynamic> json) => _$_HeldItems(
      item: json['item'] == null
          ? null
          : Ability.fromJson(json['item'] as Map<String, dynamic>),
      versionDetails: (json['versionDetails'] as List<dynamic>?)
          ?.map((e) => VersionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HeldItemsToJson(_$_HeldItems instance) =>
    <String, dynamic>{
      'item': instance.item,
      'versionDetails': instance.versionDetails,
    };

_$_VersionDetails _$$_VersionDetailsFromJson(Map<String, dynamic> json) =>
    _$_VersionDetails(
      rarity: json['rarity'] as int?,
      version: json['version'] == null
          ? null
          : Ability.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersionDetailsToJson(_$_VersionDetails instance) =>
    <String, dynamic>{
      'rarity': instance.rarity,
      'version': instance.version,
    };

_$_Moves _$$_MovesFromJson(Map<String, dynamic> json) => _$_Moves(
      move: json['move'] == null
          ? null
          : Ability.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['versionGroupDetails'] as List<dynamic>?)
          ?.map((e) => VersionGroupDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovesToJson(_$_Moves instance) => <String, dynamic>{
      'move': instance.move,
      'versionGroupDetails': instance.versionGroupDetails,
    };

_$_VersionGroupDetails _$$_VersionGroupDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_VersionGroupDetails(
      levelLearnedAt: json['levelLearnedAt'] as int?,
      moveLearnMethod: json['moveLearnMethod'] == null
          ? null
          : Ability.fromJson(json['moveLearnMethod'] as Map<String, dynamic>),
      versionGroup: json['versionGroup'] == null
          ? null
          : Ability.fromJson(json['versionGroup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersionGroupDetailsToJson(
        _$_VersionGroupDetails instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };

_$_Other _$$_OtherFromJson(Map<String, dynamic> json) => _$_Other(
      dreamWorld: json['dreamWorld'] == null
          ? null
          : DreamWorld.fromJson(json['dreamWorld'] as Map<String, dynamic>),
      officialArtwork: json['officialArtwork'] == null
          ? null
          : OfficialArtwork.fromJson(
              json['officialArtwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OtherToJson(_$_Other instance) => <String, dynamic>{
      'dreamWorld': instance.dreamWorld,
      'officialArtwork': instance.officialArtwork,
    };

_$_DreamWorld _$$_DreamWorldFromJson(Map<String, dynamic> json) =>
    _$_DreamWorld(
      frontDefault: json['frontDefault'] as String?,
    );

Map<String, dynamic> _$$_DreamWorldToJson(_$_DreamWorld instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
    };

_$_OfficialArtwork _$$_OfficialArtworkFromJson(Map<String, dynamic> json) =>
    _$_OfficialArtwork(
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
    );

Map<String, dynamic> _$$_OfficialArtworkToJson(_$_OfficialArtwork instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
    };

_$_Versions _$$_VersionsFromJson(Map<String, dynamic> json) => _$_Versions(
      generationI: json['generationI'] == null
          ? null
          : GenerationI.fromJson(json['generationI'] as Map<String, dynamic>),
      generationIi: json['generationIi'] == null
          ? null
          : GenerationI.fromJson(json['generationIi'] as Map<String, dynamic>),
      generationIii: json['generationIii'] == null
          ? null
          : GenerationI.fromJson(json['generationIii'] as Map<String, dynamic>),
      generationIv: json['generationIv'] == null
          ? null
          : GenerationI.fromJson(json['generationIv'] as Map<String, dynamic>),
      generationV: json['generationV'] == null
          ? null
          : GenerationI.fromJson(json['generationV'] as Map<String, dynamic>),
      generationVi: json['generationVi'] == null
          ? null
          : GenerationI.fromJson(json['generationVi'] as Map<String, dynamic>),
      generationVii: json['generationVii'] == null
          ? null
          : GenerationI.fromJson(json['generationVii'] as Map<String, dynamic>),
      generationViii: json['generationViii'] == null
          ? null
          : GenerationI.fromJson(
              json['generationViii'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersionsToJson(_$_Versions instance) =>
    <String, dynamic>{
      'generationI': instance.generationI,
      'generationIi': instance.generationIi,
      'generationIii': instance.generationIii,
      'generationIv': instance.generationIv,
      'generationV': instance.generationV,
      'generationVi': instance.generationVi,
      'generationVii': instance.generationVii,
      'generationViii': instance.generationViii,
    };

_$_GenerationI _$$_GenerationIFromJson(Map<String, dynamic> json) =>
    _$_GenerationI(
      redBlue: json['redBlue'] == null
          ? null
          : Other.fromJson(json['redBlue'] as Map<String, dynamic>),
      yellow: json['yellow'] == null
          ? null
          : Other.fromJson(json['yellow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationIToJson(_$_GenerationI instance) =>
    <String, dynamic>{
      'redBlue': instance.redBlue,
      'yellow': instance.yellow,
    };

_$_Stats _$$_StatsFromJson(Map<String, dynamic> json) => _$_Stats(
      baseStat: json['baseStat'] as int?,
      effort: json['effort'] as int?,
      stat: json['stat'] == null
          ? null
          : Ability.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatsToJson(_$_Stats instance) => <String, dynamic>{
      'baseStat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$_Types _$$_TypesFromJson(Map<String, dynamic> json) => _$_Types(
      slot: json['slot'] as int?,
      type: json['type'] == null
          ? null
          : Ability.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TypesToJson(_$_Types instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
