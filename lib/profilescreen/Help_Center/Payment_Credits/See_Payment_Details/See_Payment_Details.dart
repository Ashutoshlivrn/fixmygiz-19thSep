import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class SeePaymentDetails extends StatefulWidget {
  const SeePaymentDetails({super.key});

  @override
  State<SeePaymentDetails> createState() => _SeePaymentDetailsState();
}

class _SeePaymentDetailsState extends State<SeePaymentDetails> {
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
            child: Text('Where can I see my saved payment details?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.8 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('You can check all your saved payment details by clicking the below button.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('If you wish to remove any saved payment details, you can either unlink wallet account'
                'or delete the saved cards.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10 * 1.5  ,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Container(
              height: size10 * 2.7,
              width: size10 * 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.blue.shade500
              ),
              child: Center(child: Text('Check saved payments',style: TextStyle(color: white,fontSize: 16,fontWeight: FontWeight.w500),),),
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
