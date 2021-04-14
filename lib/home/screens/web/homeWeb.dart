import 'package:flutter/material.dart';
import 'package:manga/admin/screen/login.dart';
import 'package:manga/components/applocal.dart';

class HomeWeb extends StatefulWidget {
  @override
  _HomeWebState createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${getLang(context, 'home')}'),
        actions: [
          // ignore: deprecated_member_use
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: deprecated_member_use
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginAdmin()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${getLang(context, 'home')}'),
                )),
          ),
          Icon(Icons.account_circle_outlined)
        ],
      ),
    );
  }
}
