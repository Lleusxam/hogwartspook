class Spell {
  final String name;
  final String description;


  Spell({required this.name, required this.description});

  factory Spell.fromJson(Map<String, dynamic> json) {
    return Spell(
      name: json['name'],
      description: json['description'],
    );
  }
}