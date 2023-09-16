import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final String title;
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(fontSize: 32,fontWeight: FontWeight.w700),);
  }
}
class TitleTextWidget2 extends StatelessWidget {
  final String title;
  const TitleTextWidget2({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(fontSize: 26,fontWeight: FontWeight.w700),);
  }
}

class TitleTextWidget3 extends StatelessWidget {
  final String title;
  const TitleTextWidget3({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),textAlign: TextAlign.start,);
  }
}

