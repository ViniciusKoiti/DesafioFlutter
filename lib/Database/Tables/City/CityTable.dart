
import 'package:desafioflutter/models/City.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/table.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:sqflite/sqflite.dart';

import '../../DatabaseConnection.dart';
import '../Table.dart';

class CityTable implements TableAbstract<City>{

  
  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<City> get(int id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<City>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  

  @override
  Future<void> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
  
  @override
  Future<int> insert(City city) async {
    try {
      final db = await DatabaseConnection();
      return await db!.insert('city', city.toMap(),conflictAlgorithm: ConflictAlgorithm.replace,);
    } catch (e){
      print('Error:$e');
      return -1;
    }
  }
  

 
  

}