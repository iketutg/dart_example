import 'package:sqlite3/sqlite3.dart';

class User {
  int? id;
  String name;
  String email;

  User({
    this.id,
    required this.name,
    required this.email,
  });
}

class DatabaseHelper {
  static const String _databaseName = 'example.db';
  static late final SQLite3Db _database;

  static void _createTable() {
    _database.execute('''
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL
      );
      ''');
  }

  static void open() {
    _database = sqlite3.open(_databaseName);
    _createTable();
  }

  static void close() {
    _database.close();
  }

  static void createUser(User user) {
    _database.execute('''
      INSERT INTO users (name, email) VALUES (?, ?);
      ''', [user.name, user.email]);
  }

  static List<User> getUsers() {
    final result = _database.select('''
      SELECT * FROM users;
      ''');

    return result
        .map((row) => User(
              id: row['id'] as int,
              name: row['name'] as String,
              email: row['email'] as String,
            ))
        .toList();
  }

  static void updateUser(User user) {
    _database.execute('''
      UPDATE users SET name = ?, email = ? WHERE id = ?;
      ''', [user.name, user.email, user.id]);
  }

  static void deleteUser(int id) {
    _database.execute('''
      DELETE FROM users WHERE id = ?;
      ''', [id]);
  }
}

void main() {
  DatabaseHelper.open();

  // Create a user
  final user1 = User(name: 'John Doe', email: 'john.doe@example.com');
  DatabaseHelper.createUser(user1);

  // Get all users
  final users = DatabaseHelper.getUsers();
  print(users);

  // Update a user
  final user2 = users.first;
  user2.name = 'Jane Doe';
  user2.email = 'jane.doe@example.com';
  DatabaseHelper.updateUser(user2);

  // Delete a user
  final user3 = users.last;
  DatabaseHelper.deleteUser(user3.id!);

  DatabaseHelper.close();
}
