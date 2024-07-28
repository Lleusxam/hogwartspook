class Character {
  final String name;
  final String house;
  final String image;

  Character({required this.name, required this.house, required this.image});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'],
      house: json['house'],
      image: json['image']
    );
  }
}