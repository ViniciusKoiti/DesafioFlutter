

import 'package:desafioflutter/Database/DatabaseConnection.dart';
import 'package:desafioflutter/Database/Tables/Table.dart';

import '../../../models/Person.dart';

class PersonTable implements TableAbstract<Person>{
  
  @override
  Future<void> delete(int id) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Person> get(int id) async{
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Person>> getAll() async{
    // TODO: implement getAll
    throw UnimplementedError();
  }

  

  @override
  Future<void> update() async{
    // TODO: implement update
    throw UnimplementedError();
  }
  
  @override
  Future<int> insert(Person object) {
    // TODO: implement insert
    throw UnimplementedError();
  }
  
  

}