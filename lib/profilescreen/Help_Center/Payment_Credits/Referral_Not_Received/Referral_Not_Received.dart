import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class ReferralNotReceived extends StatefulWidget {
  const ReferralNotReceived({super.key});

  @override
  State<ReferralNotReceived> createState() => _ReferralNotReceivedState();
}

class _ReferralNotReceivedState extends State<ReferralNotReceived> {
  @override
  Widget build(BuildContext context) {

    var size10 = MediaQuery.of(context).size.height / 55;
    Widget points(String num, String text){
      return   Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(num,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)),
          SizedBox(width: size10 ,),
          SizedBox(
              width: size10 * 22,
              child: Text(text ,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)))
        ],
      );
    }

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
            child: Text('I have not received the reward for referral',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('You are eligible for referral reward when:'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),

          Padding(
            padding: EdgeInsets.only(left: size10 * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                points('1.', 'Your referral is first-time user on Fix My Giz app.'),
                SizedBox(height: size10 * 0.7,),

                points('2.', 'They have succesfully availed at least 1 service from us.' ),
                SizedBox(height: size10 * 0.7,),

              ],
            ),
          ),
          SizedBox(height: size10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Your reward will be credited within 24 hours of service delivery.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10 * 2,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10,),
          ArticleHelpful(),


        ],
      ),
    );;
  }
}
