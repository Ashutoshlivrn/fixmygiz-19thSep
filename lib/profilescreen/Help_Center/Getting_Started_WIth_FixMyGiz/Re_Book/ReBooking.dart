import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class ReBooking extends StatefulWidget {
  const ReBooking({super.key});

  @override
  State<ReBooking> createState() => _ReBookingState();
}

class _ReBookingState extends State<ReBooking> {
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
            child: Text('Can I re-book the same professional if I like their service',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Yes, If you rate their service with five stars, you will get an option to re-book with the same professional'
                ' the next time you book. Click on their profile and secure their slots.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          


          SizedBox(height: size10* 2 ,),


          UnPaddedSmallSeparator(),
          SizedBox(height: size10,),
          ArticleHelpful(),


        ],
      ),
    );
  }
}
