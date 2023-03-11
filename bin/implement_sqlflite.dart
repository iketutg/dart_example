import 'package:sqflite/sqflite.dart';

void main() async {



final database = await openDatabase(
  // path to the database file
  'example.db',
  // database version
  version: 1,
  // onCreate callback to create tables
  onCreate: (db, version) {
    // create tables here
  },
);



// example query
  final results = await database.query('my_table');


  final database = await openDatabase('my_db.db');

  // menggunakan instance dari SQLite3Db
  final results = await database.rawQuery('SELECT * FROM my_table');
  print(results);

}




