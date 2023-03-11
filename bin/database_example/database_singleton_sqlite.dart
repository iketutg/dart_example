import 'package:sqlite3/sqlite3.dart';

class Database {
  static final Database _instance = Database._internal();

  factory Database() {
    return _instance;
  }

  static const String _databaseName = 'example.db';
  late final SQLite3Db _database;

  Database._internal() {
    _database = sqlite3.open(_databaseName);
    _createTable();
  }

  void _createTable() {
    _database.execute('''
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL
      );
      ''');
  }

  void insertUser(String name, String email) {
    _database.execute('''
      INSERT INTO users (name, email) VALUES (?, ?);
      ''', [name, email]);
  }

  List<Map<String, Object?>> getUsers() {
    final result = _database.select('''
      SELECT * FROM users;
      ''');

    return result.toList();
  }

  void close() {
    _database.close();
  }
}
