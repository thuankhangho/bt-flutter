import 'package:flutter/material.dart';
import 'create_account.dart';

class ForgotPassWord extends StatelessWidget {
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
        title: Text("Đặt mật khẩu mới"),
      ),
      body: Column(
        children: [
          Center(
              child: FlutterLogo(
            size: 150,
          )),
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
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Mật khẩu mới",
                  border: OutlineInputBorder(),
                ),
                onSaved: (String? value) {},
                validator: (String? value) {}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Nhập lại mật khẩu",
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
                      child: Text("Đổi mật khẩu",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )))),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccount()));
                    },
                    child: Text(
                      "Đăng ký",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                      textAlign: TextAlign.justify,
                    ))),
          )
        ],
      ),
    );
  }
}
