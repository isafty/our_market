import 'package:flutter/material.dart';

Future<dynamic> navigatorMethod(BuildContext context, Widget view) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => view));
