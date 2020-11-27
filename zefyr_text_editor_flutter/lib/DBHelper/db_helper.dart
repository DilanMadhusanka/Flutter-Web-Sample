// import 'dart:io';

// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:zefyr_text_editor_flutter/Model/saved_notes.dart';

// class DBHelper {
//   static final DBHelper dbHelper = DBHelper._internal();
//   String tablename = "Notes";
//   String colId = "id";
//   String colData = "content";

//   DBHelper._internal();

//   factory DBHelper() {
//     return dbHelper;
//   }

//   static Database _db;

//   Future<Database> get db async {
//     if (_db == null) {
//       _db = await initDatabase();
//     }
//     return _db;
//   }

//   Future<Database> initDatabase() async {
//     Directory dir = await getApplicationDocumentsDirectory();
//     String path = dir.path + "SavedDatabase.db";
//     var manager = await openDatabase(path, version: 1, onCreate: _onCreate);
//     return manager;
//   }

//   void _onCreate(Database db, int version) async {
//     await db.execute(
//         "create table $tablename($colId INTEGER PRIMARY KEY, $colData TEXT )");
//   }

//   // insert entry into Database
//   Future<int> insertNote(SavedNotes savedNotes) async {
//     Database db = await this.db;
//     var result = await db.insert(tablename, savedNotes.toMap());
//     return result;
//   }

//   // retrieve the content from Database
//   Future<List> getNotes() async {
//     Database db = await this.db;
//     var result =
//         await db.rawQuery("select* from $tablename order by $colId DESC");
//     return result;
//   }
// }
