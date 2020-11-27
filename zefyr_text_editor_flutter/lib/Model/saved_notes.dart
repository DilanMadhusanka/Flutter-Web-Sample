// class SavedNotes {
//   int _id;
//   String _content;

//   SavedNotes(this._content);

//   SavedNotes.withId(this._id, this._content);

//   Map<String, dynamic> toMap() {
//     var map = new Map<String, dynamic>();
//     map['content'] = _content;

//     if (_id = null) {
//       map['id'] = _id;
//     }

//     return map;
//   }

//   SavedNotes.fromObject(dynamic o) {
//     this._id = o["id"];
//     this._content = o["content"];
//   }

//   String get content => _content;
//   set content(String value) {
//     _content = value;
//   }

//   int get id => _id;
//   set content(int value) {
//     _id = value;
//   }
// }
