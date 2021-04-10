import 'package:flutter/material.dart';
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
        actions: [
          ButtonBar(
            children: [
              Text('${getLang(context, 'home')}'),
            ],
          )
        ],
      ),
    );
  }
}
