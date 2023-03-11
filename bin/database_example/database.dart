import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main(List<String> arguments) async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'my_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE my_table(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },
    version: 1,
  );

  await database.then((db) async {
    // insert data
    await db.insert(
      'my_table',
      {'id': 1, 'name': 'John Doe', 'age': 30},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await db.insert(
      'my_table',
      {'id': 2, 'name': 'Jane Doe', 'age': 25},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    // query data
    List<Map<String, dynamic>> rows = await db.query('my_table');
    for (Map<String, dynamic> row in rows) {
      print('${row['id']}: ${row['name']} (${row['age']})');
    }

    // update data
    int updateCount = await db.update(
      'my_table',
      {'age': 40},
      where: 'name = ?',
      whereArgs: ['John Doe'],
    );
    print('Updated $updateCount rows');

    // delete data
    int deleteCount = await db.delete(
      'my_table',
      where: 'id = ?',
      whereArgs: [2],
    );
    print('Deleted $deleteCount rows');

    // close database
    await db.close();
  });

  exit(0);
}
