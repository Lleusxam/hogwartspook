class Character {
  final String name;
  final String house;
  final String image;
  final String species;
  final String patronus;
  final String ancestry;
  final bool alive;

  Character({required this.name, required this.house, required this.image, 
  required this.species, required this.patronus, required this.ancestry, required this.alive});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'],
      house: json['house'],
      image: json['image'],
      species: json['species'],
      patronus: json['patronus'],
      ancestry: json['ancestry'],
      alive: json['alive']
    );
  }
}