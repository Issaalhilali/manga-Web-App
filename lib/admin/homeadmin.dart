import 'package:flutter/material.dart';
import 'package:manga/admin/screen/app/homeApp.dart';
import 'package:manga/admin/screen/web/homeWeb.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeAdmin extends StatefulWidget {
  @override
  _HomeAdminState createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return HomeWebAdmin();
        }
        return HomeAppAdmin();
      },
    );
  }
}
