import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

DictionaryModel dictionaryModelFromJson(String str) {
  var map = json.decode(str);
  final ModelDict = DictionaryModel.fromJson(map);
  return ModelDict;
}

String dictionaryModelToJson(List<DictionaryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DictionaryModel {
  DictionaryModel({
    required this.word,
    this.pronunciation,
    this.definitions,
  });

  String? word;
  String? pronunciation;
  List<Definition>? definitions;

  factory DictionaryModel.fromJson(Map<String, dynamic> json) =>
      DictionaryModel(
        word: json["word"],
        pronunciation: json["pronunciation"],
        definitions: List<Definition>.from(
            json["definitions"].map((x) => Definition.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "word": word,
        "pronunciation": pronunciation,
        "definitions": List<dynamic>.from(definitions!.map((x) => x.toJson())),
      };
  //get word from snapshot
  factory DictionaryModel.fromSnapshot(DocumentSnapshot snapshot) {
    final newWord =
        DictionaryModel.fromJson(snapshot.data() as Map<String, dynamic>);
    return newWord;
  }
}

class Meaning {
  Meaning({
    this.partOfSpeech,
    this.definitions,
  });

  String? partOfSpeech;
  List<Definition>? definitions;

  factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        partOfSpeech: json["partOfSpeech"],
        definitions: List<Definition>.from(
            json["definitions"].map((x) => Definition.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "partOfSpeech": partOfSpeech,
        "definitions": List<dynamic>.from(definitions!.map((x) => x.toJson())),
      };
}

class Definition {
  Definition({this.definition, this.type, this.example, this.image_url});

  String? definition;
  String? type;
  String? example;
  String? image_url;

  factory Definition.fromJson(Map<String, dynamic> json) => Definition(
        definition: json["definition"],
        type: json["type"],
        example: json["example"],
        image_url: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "definition": definition,
        "image_url": image_url,
        "example": example,
        "type": type
      };
}
