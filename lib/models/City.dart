class City{
  final int? id;
  final String name;

   const City({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'name' : name,
    };
  }

  @override
  String toString() {
    return 'City{name: "$name"}';
  }
}