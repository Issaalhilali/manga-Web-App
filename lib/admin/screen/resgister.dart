import 'package:flutter/material.dart';
import 'package:manga/admin/screen/app/loginApp.dart';
import 'package:manga/admin/screen/app/registerApp.dart';

import 'package:manga/admin/screen/web/registerWeb.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterAdmin extends StatelessWidget {
  static const String id = "/register_admin";
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return ResgisterWeb();
        }
        return ResgisterApp();
      },
    );
  }
}
