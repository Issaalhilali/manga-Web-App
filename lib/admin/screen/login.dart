import 'package:flutter/material.dart';
import 'package:manga/admin/screen/app/loginApp.dart';
import 'package:manga/admin/screen/web/loginWeb.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginAdmin extends StatelessWidget {
  static const String id = "/login_admin";
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
