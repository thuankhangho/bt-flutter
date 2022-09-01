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
    return FutureBuilder<List<DictionaryModel>>(
        future: Services().getDefinition(word: query),
        builder: ((context, AsyncSnapshot<List<DictionaryModel>> snapshot) {
          /*if (!snapshot.hasData) {
            return Center(child: Text("Enter a search word"));
          }
          return ListTile(
            title: Text(snapshot.data![0].word),
          );*/
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final search_data = snapshot.data![index];
                return ListTile(
                  title: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      search_data.word),
                  subtitle: Text(search_data.meanings![index].partOfSpeech!),
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
