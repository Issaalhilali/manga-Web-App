import 'package:flutter/material.dart';
import 'package:manga/components/applocal.dart';

class LoginAppAdmin extends StatefulWidget {
  @override
  _LoginAppAdminState createState() => _LoginAppAdminState();
}

class _LoginAppAdminState extends State<LoginAppAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${getLang(context, 'home')}'),
      ),
    );
  }
}
