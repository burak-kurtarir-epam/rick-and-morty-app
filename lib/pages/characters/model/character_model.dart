class CharacterModel {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final Location? origin;
  final Location? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final DateTime? created;

  const CharacterModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });
}

class Location {
  final String? name;
  final String? url;

  const Location({
    this.name,
    this.url,
  });
}
