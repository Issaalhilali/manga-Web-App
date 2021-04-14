import 'package:flutter/material.dart';
import 'package:manga/admin/widget/imgae.picker.dart';

class ResgisterApp extends StatelessWidget {
  static const String id = "register-screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            AddImage(),
          ],
        ),
      ),
    ));
  }
}
