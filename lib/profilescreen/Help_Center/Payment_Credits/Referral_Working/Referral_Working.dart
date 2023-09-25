import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class ReferralWorking extends StatefulWidget {
  const ReferralWorking({super.key});

  @override
  State<ReferralWorking> createState() => _ReferralWorkingState();
}

class _ReferralWorkingState extends State<ReferralWorking> {
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
            child: Text('How does referral work?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('To be eligible for the referral reward, you have to fulfil the below requirements:'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),

          Padding(
            padding: EdgeInsets.only(left: size10 * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                points('1.', 'Your friend must be a first-time user of Fix My Giz.'),
                SizedBox(height: size10 * 0.7,),

                points('2.', 'Download our mobile app and register via your referral link.' ),
                SizedBox(height: size10 * 0.7,),

                points('3.', 'Account details must have a verified mobile number.' ),
                SizedBox(height: size10 * 0.7,),

              ],
            ),
          ),
          SizedBox(height: size10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Once your friend takes service with us, they will get instant 100Rs off and you can win upto 5000Rs in rewards.'
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
