import 'dart:math';

class PokemonInfo {
  final int id;
  final String name;
  final int height;
  final int weight;
  final int experience;
  final List<TypeResponse> types;
  final List<StatsResponse> stats;

  final int exp;

  PokemonInfo({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.experience,
    required this.types,
    required this.stats,
    int? exp,
  }) : exp = exp ?? Random().nextInt(MAX_EXP);

  /// Computed stats
  int get hp => stats.firstWhere(
        (s) => s.stat.name == 'hp',
    orElse: () => StatsResponse(baseStat: Random().nextInt(MAX_HP), effort: 0, stat: Stat(name: 'hp')),
  ).baseStat;

  int get attack => stats.firstWhere(
        (s) => s.stat.name == 'attack',
    orElse: () => StatsResponse(baseStat: Random().nextInt(MAX_ATTACK), effort: 0, stat: Stat(name: 'attack')),
  ).baseStat;

  int get defense => stats.firstWhere(
        (s) => s.stat.name == 'defense',
    orElse: () => StatsResponse(baseStat: Random().nextInt(MAX_DEFENSE), effort: 0, stat: Stat(name: 'defense')),
  ).baseStat;

  int get speed => stats.firstWhere(
        (s) => s.stat.name == 'speed',
    orElse: () => StatsResponse(baseStat: Random().nextInt(MAX_SPEED), effort: 0, stat: Stat(name: 'speed')),
  ).baseStat;

  /// String helpers
  String getIdString() => '#${id.toString().padLeft(3, '0')}';
  String getWeightString() => '${(weight / 10).toStringAsFixed(1)} KG';
  String getHeightString() => '${(height / 10).toStringAsFixed(1)} M';
  String getHpString() => ' $hp/$MAX_HP';
  String getAttackString() => ' $attack/$MAX_ATTACK';
  String getDefenseString() => ' $defense/$MAX_DEFENSE';
  String getSpeedString() => ' $speed/$MAX_SPEED';
  String getExpString() => ' $exp/$MAX_EXP';

  /// JSON parsing
  factory PokemonInfo.fromJson(Map<String, dynamic> json) {
    return PokemonInfo(
      id: json['id'],
      name: json['name'],
      height: json['height'],
      weight: json['weight'],
      experience: json['base_experience'],
      types: json['types'] != null
          ? (json['types'] as List).map((t) => TypeResponse.fromJson(t)).toList()
          : [],
      stats: json['stats'] != null
          ? (json['stats'] as List).map((s) => StatsResponse.fromJson(s)).toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'height': height,
      'weight': weight,
      'base_experience': experience,
      'types': types.map((t) => t.toJson()).toList(),
      'stats': stats.map((s) => s.toJson()).toList(),
    };
  }

  // Constants
  static const MAX_HP = 300;
  static const MAX_ATTACK = 300;
  static const MAX_DEFENSE = 300;
  static const MAX_SPEED = 300;
  static const MAX_EXP = 1000;
}

class TypeResponse {
  final int slot;
  final Type type;

  TypeResponse({required this.slot, required this.type});

  factory TypeResponse.fromJson(Map<String, dynamic> json) {
    return TypeResponse(
      slot: json['slot'],
      type: Type.fromJson(json['type']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot': slot,
      'type': type.toJson(),
    };
  }
}

class StatsResponse {
  final int baseStat;
  final int effort;
  final Stat stat;

  StatsResponse({required this.baseStat, required this.effort, required this.stat});

  factory StatsResponse.fromJson(Map<String, dynamic> json) {
    return StatsResponse(
      baseStat: json['base_stat'],
      effort: json['effort'],
      stat: Stat.fromJson(json['stat']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'base_stat': baseStat,
      'effort': effort,
      'stat': stat.toJson(),
    };
  }
}

class Stat {
  final String name;

  Stat({required this.name});

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}

class Type {
  final String name;

  Type({required this.name});

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}
