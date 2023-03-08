
import 'package:desafioflutter/Database/Tables/City/CityTable.dart';
import 'package:desafioflutter/Database/Tables/Person/PersonTable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desafioflutter/Database/DatabaseConnection.dart';
import 'package:desafioflutter/models/Person.dart';
import 'package:desafioflutter/models/City.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
      final cityTable = CityTable(); 
      final city = const City(name: "Paranavai", id: null);
       
      var retornoDaInsercao = await cityTable.insert(city);

       expect(retornoDaInsercao,equals(0));
}