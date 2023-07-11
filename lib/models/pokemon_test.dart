import 'package:flutter_application_1/models/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_test.freezed.dart';

part 'pokemon_test.g.dart';

@freezed
class PokemonTest with _$PokemonTest {
  factory PokemonTest({
    Sprites? sprites,
    List<Stats>? stats,
  }) = _PokemonTest;

  factory PokemonTest.fromJson(Map<String, dynamic> json) =>
      _$PokemonTestFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  factory Sprites({
    String? backDefault,
    String? backShiny,
    String? front_default,
    String? frontShiny,
    Other? other,
    Versions? versions,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class Stats with _$Stats {
  factory Stats({
    int? baseStat,
    int? effort,
    Ability? stat,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}
