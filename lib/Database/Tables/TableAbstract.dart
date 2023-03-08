import 'package:flutter/material.dart';


enum TableCreate{
    city,
    person
}

final Map<TableCreate,String> tableSqlMap = {
    TableCreate.city: "CREATE TABLE city(id INTEGER PRIMARY KEY, name VARCHAR(100))",
    TableCreate.person : "CREATE TABLE person(id INTEGER PRIMARY KEY AUTOINCREMENT,name VARCHAR(100),cidade_id INT NOT NULL,image BLOB,aboutPerson VARCHAR(100)",
};

abstract class TableAbstract<T>{
  
  Future<int> insert(T object);
  
  Future<List<T>> getAll();

  Future<void> update();

  Future<void> delete(int id);

   Future<T> get(int id);


}
