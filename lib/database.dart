import 'dart:io';
import 'package:newmatromany/Model/table_user.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'matrimony_2022_14032022.db');
    return await openDatabase(
      databasePath,
      version: 2,
      onCreate: (db, version) {},
      onUpgrade: (db, oldVersion, newVersion) {
        db.execute('ALTER ');
        db.execute('sql');
      },
    );
  }

  Future<List<Map<String, Object?>>> search() async {
    Database db = await initDatabase();
    String query = '''
      SELECT * FROM Mst_Country
      LIMIT 25''';
    List<Map<String, Object?>> list = await db.rawQuery(query);
    print('DATA ::${list.length}');
    // List<TBLCountry> countries = [];
    // Map<String, Object?> data = map[0];
    // data['CountryId'];
    // for (int i = 0; i < map.length; i++) {
    //   TBLCountry country = TBLCountry.fromMap(map[i]);
    //   print('map[$i]::${country.CountryID}');
    //   print('map[$i]::${country.CountryName}');
    //   countries.add(country);
    // }
    // print('ALL::map::${countries.toString()}');
    return list;
  }

  Future<List<TblUserModel>> getUserList() async {
    List<TblUserModel> list = [];
    Database db = await initDatabase();
    List<Map<String, Object?>> userList =
    await db.rawQuery('SELECT * FROM Tbl_User');
    for(int i = 0;i<userList.length;i++){
      TblUserModel model = TblUserModel.fromMap(userList[i]);

      list.add(model);
    }
    return list;
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "matrimony_2022_14032022.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle
          .load(join('assets/databases', 'matrimony_2022_14032022.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }
}
