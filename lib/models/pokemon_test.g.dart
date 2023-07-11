// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonTest _$$_PokemonTestFromJson(Map<String, dynamic> json) =>
    _$_PokemonTest(
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonTestToJson(_$_PokemonTest instance) =>
    <String, dynamic>{
      'sprites': instance.sprites,
      'stats': instance.stats,
    };

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      backDefault: json['backDefault'] as String?,
      backShiny: json['backShiny'] as String?,
      front_default: json['front_default'] as String?,
      frontShiny: json['frontShiny'] as String?,
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
      versions: json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backShiny': instance.backShiny,
      'front_default': instance.front_default,
      'frontShiny': instance.frontShiny,
      'other': instance.other,
      'versions': instance.versions,
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
