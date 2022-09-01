import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/dictionary_model.dart';
import 'package:flutter_app/services/database.dart';
import 'custom_search.dart';
import 'package:firebase_core/firebase_core.dart';

final yourDict = Database();
Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class YourDictionary extends StatelessWidget {
  const YourDictionary({Key? key}) : super(key: key);

  Widget buildDictItems(BuildContext context, DocumentSnapshot snapshot) {
    final word = DictionaryModel.fromSnapshot(snapshot);
    return ListTile(
      title: Text(word.word),
    );
  }

  Widget buildDict(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
        padding: const EdgeInsets.only(top: 20),
        children:
            snapshot.map((data) => buildDictItems(context, data)).toList());
  }

  @override
  Widget build(BuildContext context) {
    setup();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text("Từ đã lưu"),
              bottom: TabBar(
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(50), // Creates border
                  //   color: Colors.red,
                  // ),
                  indicatorWeight: 7,
                  tabs: [
                    Text(
                      "Từ đã lưu",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Từ đã học",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ])),
          body: TabBarView(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              focusColor: Colors.blue,
                              hintText: "Tìm từ trong thư mục",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                            onSaved: (String? value) {},
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            onTap: () => showSearch(
                                context: context, delegate: customSearch())),
                        StreamBuilder<QuerySnapshot>(
                          stream: yourDict.getStream(),
                          builder: ((context, snapshot) {
                            if (snapshot.hasData == false)
                              return LinearProgressIndicator();
                            return buildDict(
                                context, snapshot.data?.docs ?? []);
                          }),
                        )
                        //       Container(
                        //           margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        //           height: 500,
                        //           decoration: BoxDecoration(
                        //             border: Border.all(
                        //               color: Colors.black,
                        //               width: 1,
                        //             ),
                        //             // borderRadius: BorderRadius.circular(20),
                        //           ),
                        //           child: Center(
                        //               child: Text(
                        //                   "Chưa có từ vựng được lưu trong thư mục này")))
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              focusColor: Colors.blue,
                              hintText: "Tìm từ trong thư mục",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                            onSaved: (String? value) {},
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            onTap: () => showSearch(
                                context: context, delegate: customSearch())),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            height: 500,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                                    "Chưa có từ vựng được lưu trong thư mục này")))
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
