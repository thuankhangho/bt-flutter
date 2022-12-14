import 'package:flutter/material.dart';
import 'your_dictionary.dart';
import 'history.dart';
import 'login.dart';
import 'settings.dart';
import 'custom_search.dart';

TextEditingController search_input = TextEditingController();

class LineBoard extends StatelessWidget {
  const LineBoard(this.icon, this.title, this.onPressed, {super.key});
  final IconData icon;
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // background
          onPrimary: Colors.black, // foreground
        ),
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            title,
          ),
          selected: true,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Từ điển Flutter"),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // side: BorderSide(width: 3, color: Colors.white),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogIn()));
                },
                child: Icon(Icons.person)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(children: <Widget>[
              Container(
                color: Colors.blue,
                height: 70,
              ),
              Center(
                child: ListTile(
                    title: TextFormField(
                        controller: search_input,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          focusColor: Colors.blue,
                          hintText: "Tra từ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          // suffixIcon: Icon(Icons.mic),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        // onSaved: (String? value) {},
                        onTap: () => showSearch(
                            context: context, delegate: CustomSearch())
                        // style: TextStyle(
                        //   color: Colors.white,
                        // ),
                        ),
                    trailing: ElevatedButton(
                        child: Text("Tìm",
                            style: TextStyle(
                              // color: Colors.white,
                              fontSize: 15,
                            )),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: BorderSide(width: 3, color: Colors.white),
                          onPrimary: Colors.white,
                          onSurface: Colors.grey,
                          primary: Colors.blue,
                        ))),
              )
            ]),
            LineBoard(Icons.star, "Từ đã lưu", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => YourDictionary()));
            }),
            LineBoard(Icons.settings, "Cài đặt", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            }),
            LineBoard(Icons.refresh, "Lịch sử tra từ", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => History()));
            }),
            // LineBoard(Icons.smartphone, "Ứng dụng học Tiếng Anh khác"),
            LineBoard(Icons.person, "Đăng nhập", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LogIn()));
            }),
          ],
        ),
      ),
    );
  }
}
