import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/lib_frontend/your_dictionary.dart';
import '../models/dictionary_model.dart';

class Database {
  final CollectionReference yourDict =
      FirebaseFirestore.instance.collection("words");

  //get Stream
  Stream<QuerySnapshot> getStream() {
    return yourDict.snapshots();
  }

//add words into your dictionary
  Future<DocumentReference> addWord(DictionaryModel word) {
    return yourDict.add(word.toJson());
  }

  //delete words from your dictionary
  void deleteWord(DictionaryModel word) async {
    await yourDict.doc(word.word).delete();
  }
}
