import 'package:flutter/material.dart';
class Subtitle extends StatelessWidget {
  const Subtitle({Key? key, required this.subtile}) : super(key: key);
  final String subtile;

  @override
  Widget build(BuildContext context) {
    return Text(subtile,style: const TextStyle(color: Colors.grey),);
  }
}

class Subtitle2 extends StatelessWidget {
  const Subtitle2({Key? key, required this.subtile}) : super(key: key);
  final String subtile;

  @override
  Widget build(BuildContext context) {
    return Text(subtile,style: const TextStyle(color: Colors.black),);
  }
}

