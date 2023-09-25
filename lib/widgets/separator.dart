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


class UnPaddedSmallSeparator extends StatefulWidget {
  const UnPaddedSmallSeparator({super.key});
  @override
  State<UnPaddedSmallSeparator> createState() => _UnPaddedSmallSeparatorState();
}
class _UnPaddedSmallSeparatorState extends State<UnPaddedSmallSeparator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: double.infinity,
      height: 1.7,
    );
  }
}

class PaddedSmallSeparator extends StatefulWidget {
  const PaddedSmallSeparator({super.key});

  @override
  State<PaddedSmallSeparator> createState() => _PaddedSmallSeparatorState();
}

class _PaddedSmallSeparatorState extends State<PaddedSmallSeparator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(

        color: Colors.grey.shade300,
        width: double.infinity,
        height: 1.7,

      ),
    );
  }
}

