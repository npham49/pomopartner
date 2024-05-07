import 'package:path/path.dart';
import 'package:pomopartner/models/timer_local.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _databaseName = 'Timer.db';

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _databaseName),
        onCreate: (db, version) async => await db.execute(
            "CREATE TABLE Timers(id INTEGER PRIMARY KEY, name TEXT NOT NULL, minutes INTEGER NOT NULL)"),
        version: _version);
  }

  static Future<int> insertTimer(TimerLocal timer) async {
    final Database db = await _getDB();
    return await db.insert('Timers', timer.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateTimer(TimerLocal timer) async {
    final Database db = await _getDB();
    return await db.update('Timers', timer.toJson(),
        where: 'id = ?',
        whereArgs: [timer.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteTimer(int id) async {
    final Database db = await _getDB();
    return await db.delete('Timers', where: 'id = ?', whereArgs: [id]);
  }
}
