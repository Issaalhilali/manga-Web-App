import 'package:flutter/material.dart';
import 'package:manga/admin/screen/app/loginApp.dart';
import 'package:manga/admin/screen/web/loginWeb.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginAdmin extends StatefulWidget {
  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return LoginWebAdmin();
        }
        return LoginAppAdmin();
      },
    );
  }
}
