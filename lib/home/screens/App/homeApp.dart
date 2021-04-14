import 'package:flutter/material.dart';
import 'package:manga/admin/screen/login.dart';
import 'package:manga/components/applocal.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(),
        title: Text('hgj'),
        actions: [
          // ignore: deprecated_member_use
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginAdmin()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.login,
                ),
              )),
          Icon(Icons.account_circle_outlined)
        ],
      ),
    );
  }
}
