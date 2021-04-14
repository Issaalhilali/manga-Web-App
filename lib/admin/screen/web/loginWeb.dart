import 'package:flutter/material.dart';
import 'package:manga/components/applocal.dart';

class LoginWebAdmin extends StatefulWidget {
  @override
  _LoginWebAdminState createState() => _LoginWebAdminState();
}

class _LoginWebAdminState extends State<LoginWebAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${getLang(context, 'home')}'),
      ),
    );
  }
}
