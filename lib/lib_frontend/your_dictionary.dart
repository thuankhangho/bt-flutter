import 'package:flutter/material.dart';
import 'custom_search.dart';

class YourDictionary extends StatelessWidget {
  const YourDictionary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            context: context, delegate: customSearch())
                        ),
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
                            context: context, delegate: customSearch())
                        ),
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
