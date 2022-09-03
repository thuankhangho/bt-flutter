import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/dictionary_model.dart';
import 'package:flutter_app/api_url.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<DictionaryModel> getDefinition({String? word}) async {
    final res_url = "$api_url$word";
    var headers = {
      'Authorization': 'Token ' + token,
    };
    try {
      final req = await http.get(headers: headers, Uri.parse(res_url));
      print(req.body);
      if (req.statusCode == 200) {
        final dictModel = dictionaryModelFromJson(req.body);
        return dictModel;
      } else {
        throw ErrorDescription(req.body);
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
