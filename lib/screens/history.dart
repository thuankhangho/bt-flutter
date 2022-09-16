import 'package:flutter/material.dart';
import 'custom_search.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Lịch sử tra từ"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusColor: Colors.blue,
                      hintText: "Tìm từ",
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
                    onTap: () =>
                        showSearch(context: context, delegate: CustomSearch())),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    height: 500,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("Lịch sử tra từ trống")))
              ],
            ),
          )),
    );
  }
}
