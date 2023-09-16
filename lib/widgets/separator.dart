import 'package:flutter/material.dart';

import '../common/constants.dart';
class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: primarycolor,
      width: double.infinity,
      height: 8,
    );
  }
}


class SmallSeparator extends StatelessWidget {
  const SmallSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(

        color: primarycolor,
        width: double.infinity,
        height: 2,

      ),
    );
  }
}
