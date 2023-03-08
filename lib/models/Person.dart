
import 'dart:typed_data';
import 'City.dart';

class Person {
  final int? id;
  final String name;
  final City city;
  final Uint8List image;
  final String aboutPerson;

  const Person({
    required this.id,
    required this.name,
    required this.city,
    required this.image,
    required this.aboutPerson,
  });

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'name' : name,
      'city' : city,
      'image' : image,
      'about' : aboutPerson
    };
  }

  @override
  String toString() {
    return 'Person{name: "$name",city:"$city",image:"$image",aboutPerson:"$aboutPerson"}';
  }


}

