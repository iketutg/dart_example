import 'package:sqlite3/sqlite3.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'example.db');

    return await sqlite3.open(path);
  }

  Future<void> create(String table, Map<String, dynamic> data) async {
    final db = await database;
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        age INTEGER
      )
    ''');

    await db.insert(table, data);
  }

  Future<List<Map<String, dynamic>>> read(String table) async {
    final db = await database;
    final result = await db.query(table);
    return result;
  }

  Future<void> update(String table, int id, Map<String, dynamic> data) async {
    final db = await database;
    await db.update(table, data, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> delete(String table, int id) async {
    final db = await database;
    await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }
}
