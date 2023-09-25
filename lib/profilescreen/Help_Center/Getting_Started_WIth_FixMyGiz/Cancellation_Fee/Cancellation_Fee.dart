import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class Cancellation_Fee extends StatefulWidget {
  const Cancellation_Fee({super.key});

  @override
  State<Cancellation_Fee> createState() => _Cancellation_FeeState();
}

class _Cancellation_FeeState extends State<Cancellation_Fee> {
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
            child: Text('Does Fix My Giz charge any cancellation fee?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 2.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Cancellation fee is charged only if a professional is assigned on your booking and the time of '
                'cancellation is closer to your booking time. This is done to fairly compensate our professionals for their time'
                ' and the cost of travel while travelling to your place.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),




          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Exact cancellation amount will be shown while you proceed with a cancellation request.'

              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 2 ,),

          UnPaddedSmallSeparator(),
          SizedBox(height: size10,),
          ArticleHelpful(),





        ],
      ),
    );;
  }
}
