import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Create new account"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
                'https://ebudezain.com/upload/images/flutter/flutter12.png',
                height: 80,
                width: 200),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
              onSaved: (String? value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
                onSaved: (String? value) {},
                validator: (String? value) {}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Retype password",
                  border: OutlineInputBorder(),
                ),
                onSaved: (String? value) {},
                validator: (String? value) {}),
          ),
          SizedBox(
            height: 60,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue[500],
              ),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text("Create new Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )))),
            ),
          ),
        ],
      ),
    );
  }
}
