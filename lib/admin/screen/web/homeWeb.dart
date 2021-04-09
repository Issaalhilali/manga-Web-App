import 'package:flutter/material.dart';

class HomeWebAdmin extends StatefulWidget {
  @override
  _HomeWebAdminState createState() => _HomeWebAdminState();
}

class _HomeWebAdminState extends State<HomeWebAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Text('data'),
        ),
      ),
    );
  }
}
