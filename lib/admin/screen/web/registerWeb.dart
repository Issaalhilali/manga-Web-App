import 'package:flutter/material.dart';
import 'package:manga/admin/screen/resgister.dart';
import 'package:manga/admin/widget/imgae.picker.dart';

class ResgisterWeb extends StatelessWidget {
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
