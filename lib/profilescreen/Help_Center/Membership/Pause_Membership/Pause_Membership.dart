import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class PauseMembership extends StatefulWidget {
  const PauseMembership({super.key});

  @override
  State<PauseMembership> createState() => _PauseMembershipState();
}

class _PauseMembershipState extends State<PauseMembership> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size10 * 3,
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_rounded)),
          SizedBox(
            height: size10 * 2.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
            child: Text(
              'Can I pause my membership?',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: size10 * 2.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
            child: Text(
              'No, the membership, once activated cannot be paused.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                  color: Colors.grey.shade600),
            ),
          ),
          SizedBox(
            height: size10 * 2.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
            child: Text(  'We offer you a money back guarantee with this membership. If you are unable to avail discounts equal to the'
                ' price of the membership, we refund the difference as Fix My Giz credits in the wallet at the end of the membership period.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                  color: Colors.grey.shade600),
            ),
          ),

          SizedBox(
            height: size10 * 2,
          ),


          UnPaddedSmallSeparator(),
          SizedBox(height: size10 * 1.3,),
          ArticleHelpful(),
        ],
      ),
    ); ;

  }
}
