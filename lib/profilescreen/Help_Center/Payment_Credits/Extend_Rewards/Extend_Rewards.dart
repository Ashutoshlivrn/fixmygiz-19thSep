import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class ExtendRewards extends StatefulWidget {
  const ExtendRewards({super.key});

  @override
  State<ExtendRewards> createState() => _ExtendRewardsState();
}

class _ExtendRewardsState extends State<ExtendRewards> {
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
            child: Text('Can I extend the validity of the rewards?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.8 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('No, the validity of the rewards or Fix My Giz credits cannot be extended.'
                'Please use the credits before their validity expire.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 2 ,),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('To check the validity of your rewards'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10 * 2  ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Container(
              height: size10 * 2.7,
              width: size10 * 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.blue.shade500
              ),
              child: Center(child: Text('Go to wallet',style: TextStyle(color: white,fontSize: 16,fontWeight: FontWeight.w500),),),
            ),
          ),
          SizedBox(height: size10* 2 ,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 1.4,),
          ArticleHelpful(),


        ],
      ),
    ) ;;
  }
}
