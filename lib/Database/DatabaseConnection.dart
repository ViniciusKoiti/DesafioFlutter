import 'dart:async';

import 'package:desafioflutter/Database/Tables/Table.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/City.dart';
import '../models/Person.dart';

Future<Database> DatabaseConnection() async{
  WidgetsFlutterBinding.ensureInitialized();
  final path = join(await getDatabasesPath(), "InitDatabase.db");
  final database = openDatabase(
    path,
    version: 1,
    onCreate: (db,version) async {
    
    await db.execute('CREATE TABLE teste (id INTEGER PRIMARY KEY, name TEXT)',);
  },
  
  );

  return database;
}

Future<void> insertCity(City city) async{
    final db = await DatabaseConnection();
    await db.insert('city', city.toMap(),conflictAlgorithm: ConflictAlgorithm.replace,);
}

Future<void> insertPerson(Person person) async{
  final db = await DatabaseConnection();
  await db.insert('person', person.toMap(),conflictAlgorithm: ConflictAlgorithm.replace,);
}