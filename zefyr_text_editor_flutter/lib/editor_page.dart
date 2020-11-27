// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:quill_delta/quill_delta.dart';
// import 'package:zefyr/zefyr.dart';
// import 'package:zefyr_text_editor_flutter/DBHelper/db_helper.dart';
// import 'package:zefyr_text_editor_flutter/Model/saved_notes.dart';

// DBHelper helper = DBHelper();

// class EditorPage extends StatefulWidget {
//   SavedNotes _savedNotes;
//   EditorPage(this._savedNotes);

//   @override
//   _EditorPageState createState() => _EditorPageState(_savedNotes);
// }

// class _EditorPageState extends State<EditorPage> {
//   ZefyrController _controller;
//   FocusNode _focusNode;

//   SavedNotes _notes;
//   _EditorPageState(this._notes);

//   @override
//   void initState() {
//     final document = _localDocument();
//     _controller = ZefyrController(document);
//     _focusNode = FocusNode();
//     // super.initState();
//   }

//   NotusDocument _localDocument() {
//     final Delta delta = Delta()..insert("Insert Text here\n");
//     return NotusDocument.fromDelta(delta);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Create Note"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10.0),
//         child: ZefyrScaffold(
//           child: ZefyrEditor(
//             padding: EdgeInsets.all(5.0),
//             controller: _controller,
//             focusNode: _focusNode,
//           ),
//         ),
//       ),
//       floatingActionButton: Builder(
//         builder: (BuildContext context) {
//           return FloatingActionButton(
//             child: Icon(Icons.save),
//             backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
//             onPressed: () {
//               save();
//             },
//           );
//         },
//       ),
//     );
//   }

//   void save() {
//     final content = jsonEncode(_controller.document);
//     debugPrint(content);
//     _notes.content = content;

//     if(_notes.id!=null) {
//       // write update logic here
//     }
//     else {
//       helper.insertNote(_notes);
//     }
//     // lets try to run it see if any error
//   }
// }
