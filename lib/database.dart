import 'package:sqflite/sqflite.dart';
class DatabaseHelper {
  Future<Database> initializeDB() async {
    var databasePath;
    getDatabasesPath().then((value) =>
    {
      databasePath = value
    });
    String path = databasePath + 'Matrimony_DB.db';
    Database db = await openDatabase(path, version: 1,);
    return db;
  }

  void createTables() {
  }
}