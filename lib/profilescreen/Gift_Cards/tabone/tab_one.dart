import 'package:fixmygiz/common/constants.dart';
import 'package:flutter/material.dart';

class TabOne extends StatefulWidget {
  const TabOne({super.key});

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text('No Gift Cards Yet',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have a gift card?',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),
                TextButton(onPressed: () {}, child: const Text('Add it from here',
                  style: TextStyle(decoration: TextDecoration.underline,decorationThickness: 2,height: 1.2,fontWeight: FontWeight.w400,fontSize: 14), )
                )
              ],
            ),
             SizedBox(height: size10 * 2,),
            Container(
              height: size10 * 3.6,
              width: size10 * 13,
              decoration: BoxDecoration(color: black,borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Center(child: Text('Add a card',style: TextStyle(color: white,fontSize: 15,fontWeight: FontWeight.w500),),),
            )
          ],
        ),
      ),
    );
  }
}
