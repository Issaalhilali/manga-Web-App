import 'package:flutter/material.dart';
import 'package:manga/home/screens/App/homeApp.dart';
import 'package:manga/home/screens/web/homeWeb.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return HomeWeb();
        }
        return HomeApp();
      },
    );
  }
}
