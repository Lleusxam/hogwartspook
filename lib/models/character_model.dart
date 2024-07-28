class Character {
  final String name;
  final String house;
  final String image;
  final String species;
  final String patronus;
  final String ancestry;

  Character({required this.name, required this.house, required this.image, 
  required this.species, required this.patronus, required this.ancestry});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'],
      house: json['house'],
      image: json['image'],
      species: json['species'],
      patronus: json['patronus'],
      ancestry: json['ancestry']
    );
  }
}