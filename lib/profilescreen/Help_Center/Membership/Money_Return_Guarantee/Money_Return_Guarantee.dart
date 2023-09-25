import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class MoneyReturnGurantee extends StatefulWidget {
  const MoneyReturnGurantee({super.key});

  @override
  State<MoneyReturnGurantee> createState() => _MoneyReturnGuranteeState();
}

class _MoneyReturnGuranteeState extends State<MoneyReturnGurantee> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size10 * 3,),
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon:  Icon(Icons.arrow_back_rounded)),
          SizedBox(height: size10 * 2.2,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('How does the 100% money-back gurantee work?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 2.2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('If a Fix My Giz Plus member saves less than the membership price, we refund the remaining balance'
                ' as Fix My Giz cash. This refund is calculated at the end of the membership period.'

              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),




          SizedBox(height: size10* 2 ,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 1.3,),
          ArticleHelpful(),


        ],
      ),
    );;
  }
}
