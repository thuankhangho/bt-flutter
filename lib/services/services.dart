import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_app/models/dictionary_model.dart';
import 'package:flutter_app/api_url.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<DictionaryModel> getDefinition({String? word}) async {
    final res_url = "$api_url$word";
    /*try {
      var headers = {
        'Authorization': 'Token 0ddf84789be6f31408bebff1b2598ebbc1a78e6a',
      };
      final req = await http.Request('GET', Uri.parse(res_url));
      req.headers.addAll(headers);
      http.StreamedResponse response = await req.send();
      if (response.statusCode == 200) {
        final dictModel =
            dictionaryModelFromJson(await response.stream.bytesToString());
        print(req.body);
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
    }*/
    var headers = {
      'Authorization': 'Token 0ddf84789be6f31408bebff1b2598ebbc1a78e6a',
    };
    /*final req = await http.Request('GET', Uri.parse(res_url));
    req.headers.addAll(headers);
    http.StreamedResponse response = await req.send();
    final responseStr = await response.stream.bytesToString();*/
    final req = await http.get(headers: headers, Uri.parse(res_url));
    print(req.body);
    if (req.statusCode == 200) {
      final dictModel = dictionaryModelFromJson(req.body);
      return dictModel;
    } else {
      final dictModel = dictionaryModelFromJson(req.body);
      return dictModel;
    }
  }
}
