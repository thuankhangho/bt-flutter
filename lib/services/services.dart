import 'dart:async';
import 'dart:io';

import 'package:flutter_app/models/dictionary_model.dart';
import 'package:flutter_app/api_url.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<List<DictionaryModel>> getDefinition({String? word}) async {
    final res_url = "$api_url/$word";
    try {
      final req = await http.get(Uri.parse(res_url));
      if (req.statusCode == 200) {
        print(req.body);
        final dictModel = dictionaryModelFromJson(req.body);

        return dictModel;
      } else {
        print(req.body);
        final dictModel = dictionaryModelFromJson(req.body);
        return dictModel;
      }
    } catch (e) {
      if (e is SocketException) {
        //treat SocketException
        return Future.error('No network found');
      } else if (e is TimeoutException) {
        //treat TimeoutException
        return Future.error('Time Out!');
      }
      return Future.error('Unhandled Exception');
    }
  }
}
