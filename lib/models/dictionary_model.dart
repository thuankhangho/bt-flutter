import 'dart:convert';

List<DictionaryModel> dictionaryModelFromJson(String str) =>
    List<DictionaryModel>.from(
        json.decode(str).map((x) => DictionaryModel.fromJson(x)));

String dictionaryModelToJson(List<DictionaryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DictionaryModel {
  String word;
  List<Phonetic> phonetics;
  List<Meaning> meanings;
  DictionaryModel(
      {required this.word, required this.phonetics, required this.meanings});
  factory DictionaryModel.fromJson(Map<String, dynamic> json) =>
      DictionaryModel(
          word: json["word"],
          phonetics: json["phonetics"],
          meanings: json["meanings"]);
  Map<String, dynamic> toJson() =>
      {"word": word, "phonetics": phonetics, "meanings": meanings};
}

class Meaning {
  String partOfSpeech;
  List<String> definitions;
  Meaning({required this.partOfSpeech, required this.definitions});
  factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
      partOfSpeech: json["partOfSpeech"], definitions: json["definitions"]);
  Map<String, dynamic> toJson() =>
      {"partOfSpeech": partOfSpeech, "definitions": definitions};
}

class Phonetic {
  String text;
  String audio;
  Phonetic({required this.audio, required this.text});
  factory Phonetic.fromJson(Map<String, dynamic> json) => Phonetic(
        text: json["text"],
        audio: json["audio"],
      );
  Map<String, dynamic> toJson() => {
        "text": text,
        "audio": audio,
      };
}
