import 'package:flutter/material.dart';
import 'package:manga/admin/screen/resgister.dart';

import 'package:manga/components/applocal.dart';

class LoginWebAdmin extends StatefulWidget {
  @override
  _LoginWebAdminState createState() => _LoginWebAdminState();
}

class _LoginWebAdminState extends State<LoginWebAdmin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterAdmin()));
                },
                child: Text('Sigup'))
          ],
        ),
      ),
    ));
  }
}
