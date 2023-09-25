import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class ShareMemberhsip extends StatefulWidget {
  const ShareMemberhsip({super.key});

  @override
  State<ShareMemberhsip> createState() => _ShareMemberhsipState();
}

class _ShareMemberhsipState extends State<ShareMemberhsip> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
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
              'Can I share membership with family?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: size10 * 2.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
            child: Text(
              'Only you can avail benefits of the Fix My Giz Plus membership as it is linked with you FMG account only.',
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
            child: Text(
              'However, you can book the service for others from your account and still receive same benefits under your name.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                  color: Colors.grey.shade600),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
            child: Text(
              'If you don\'t have FMG plus membership and want to suscribe for it, please check.',
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

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Container(
              height: size10 * 2.8,
              width: size10 * 13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.blue.shade500
              ),
              child: Center(child: Text('Check FMG Plus',style: TextStyle(color: white,fontSize: 16,fontWeight: FontWeight.w500),),),
            ),
          ),

          SizedBox(height: size10 * 1.3,),
          
          UnPaddedSmallSeparator(),
          SizedBox(height: size10 * 1.3,),
          ArticleHelpful(),
        ],
      ),
    );
    ;
  }
}
