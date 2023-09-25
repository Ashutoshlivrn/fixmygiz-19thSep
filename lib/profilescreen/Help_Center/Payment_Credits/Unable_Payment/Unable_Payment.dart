import 'package:fixmygiz/common/constants.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class UnablePayment extends StatefulWidget {
  const UnablePayment({super.key});

  @override
  State<UnablePayment> createState() => _UnablePaymentState();
}

class _UnablePaymentState extends State<UnablePayment> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    Widget points( String text){
      return   Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 5,
            width: 5,
            decoration: BoxDecoration(shape: BoxShape.circle,color: black),
          ),
          SizedBox(width: size10 ,),
          SizedBox(
              width: size10 * 22,
              child: Text(text ,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)))
        ],
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size10 * 3,),
            IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon:  Icon(Icons.arrow_back_rounded)),
            SizedBox(height: size10 * 2.2,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size10*1.2),
              child: Text('How to place a booking?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: size10* 1.3 ,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size10*1.2),
              child: Text('Note: Simpl and Lazypay are temporarily facing high error rates. We request you to use a different payment method for now.'
                  'Our team is working to fix this.'
                ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,height: 1.3, color: Colors.black87),),
            ),
            SizedBox(height: size10 * 2 ,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: size10*1.2),
              child: Text('If you are not able to complete payment, please try the following steps:'
                ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
            ),

            SizedBox(height: size10 * 0.7 ,),

            Padding(
              padding: EdgeInsets.only(left: size10 * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  points( 'Select a different payment mode than the one you\'re trying with (e.g try using your debit card instead of UPI).'),
                  SizedBox(height: size10 * 0.7,),

                  points(  'If switching payment mode doesn\'t work - then select \'\'Pay online after service\'\' or '
                      '\'\'Pay with cash after service\'\'. In case paying online, you will be able to pick a mode of your choice after the'
                      'service ends.' ),
                  SizedBox(height: size10 * 0.7,),

                  points(
                      'If multiple payment options are failing or pay after service is not available - please wait for some time and'
                          'try placing the booking again.' ),
                  SizedBox(height: size10 * 0.7,),


                ],
              ),
            ),

            SizedBox(height: size10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size10*1.2),
              child: Text('If any amount has been debited and the booking shows \'\'Payment failed\'\' - please don\'t worry.'
                  'Any debited amount will be credited back to your source account within 7 working days.'
                ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
            ),
            SizedBox(height: size10 * 2 ,),

            UnPaddedSmallSeparator(),
            SizedBox(height: size10,),
            ArticleHelpful(),
            SizedBox(height: size10,),




          ],
        ),
      ),
    );
  }
}
