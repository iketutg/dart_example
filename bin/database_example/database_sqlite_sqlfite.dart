// import 'package:sqflite/sqflite.dart';

// void main() async {
//   // membuka koneksi ke database
//   final database = await openDatabase('my_database.db');

//   // menjalankan query
//   await database.execute(
//       'CREATE TABLE IF NOT EXISTS users(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)');

//   // menambahkan data
//   await database.insert('users', {'name': 'John Doe', 'age': 30});

//   // mengambil data
//   final List<Map<String, dynamic>> users = await database.query('users');

//   // menampilkan hasil
//   print(users);

//   // menutup koneksi ke database
//   await database.close();
// }
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databaseName = 'my_database.db';
  static final _databaseVersion = 1;

  static final table = 'my_table';

  static final columnId = '_id';
  static final columnName = 'name';
  static final columnAge = 'age';

  // membuat singleton instance
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // inisialisasi database
  Future<Database> _initDatabase() async {
    final documentsDirectory = await getDatabasesPath();
    final path = join(documentsDirectory, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // membuat tabel
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL,
            $columnAge INTEGER NOT NULL
          )
          ''');
  }

  // insert data
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  // get all data
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  // get data berdasarkan id
  Future<Map<String, dynamic>?> queryRow(int id) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result =
        await db.query(table, where: '$columnId = ?', whereArgs: [id]);
    if (result.isNotEmpty) {
      return result.first;
    } else {
      return null;
    }
  }

  // update data
  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(table, row, where: '$columnId = ?', whereArgs: [id]);
  }

  // delete data berdasarkan id
  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }
}

void main() async {
  await DatabaseHelper.instance.insert({
    DatabaseHelper.columnName: 'John Doe',
    DatabaseHelper.columnAge: 30,
  });

}


//flutter pub add path 