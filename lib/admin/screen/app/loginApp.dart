import 'package:flutter/material.dart';
import 'package:manga/admin/screen/resgister.dart';

import 'package:manga/components/applocal.dart';

class LoginAppAdmin extends StatefulWidget {
  @override
  _LoginAppAdminState createState() => _LoginAppAdminState();
}

class _LoginAppAdminState extends State<LoginAppAdmin> {
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
