import 'package:flutter/material.dart';
import 'package:flutter_app/models/dictionary_model.dart';
import 'package:flutter_app/services/services.dart';

class CustomSearch extends SearchDelegate {
  List<dynamic> allData = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: matchQuery.length,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<DictionaryModel>(
        future: Services().getDefinition(word: query),
        builder: ((context, AsyncSnapshot<DictionaryModel> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.definitions?.length,
              itemBuilder: (context, index) {
                final define = snapshot.data!.definitions![index];
                final word = snapshot.data?.word;
                return ListTile(
                  title: Row(
                    children: [
                      Text(
                          style: TextStyle(fontWeight: FontWeight.bold), word!),
                      SizedBox(width: 20),
                      Text(define.type!)
                    ],
                  ),
                  subtitle: Text(define.definition!),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    snapshot.error.toString()));
          } else {
            return Center(child: CircularProgressIndicator());
          }
          //return ListView(children: [List.generate(length, (index) => null)],);
        }));
  }
}
