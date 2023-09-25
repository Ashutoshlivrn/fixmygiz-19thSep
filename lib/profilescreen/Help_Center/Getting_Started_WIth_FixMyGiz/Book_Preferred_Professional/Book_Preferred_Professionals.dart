import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class BookPreferredProfessionals extends StatefulWidget {
  const BookPreferredProfessionals({super.key});

  @override
  State<BookPreferredProfessionals> createState() => _BookPreferredProfessionalsState();
}

class _BookPreferredProfessionalsState extends State<BookPreferredProfessionals> {
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
            child: Text('How to book my preferred professional?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('If you have already taken the service & rate the professional above 4 star, you can book your preferred professinal by:'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),

          Padding(
            padding: EdgeInsets.only(left: size10 * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                points('1.', 'Adding services in you cart.'),
                SizedBox(height: size10 * 0.7,),

                points('2.', 'Selecting your preferred professional from the list of professionals.' ),
                SizedBox(height: size10 * 0.7,),

                points('3.', 'Proceed with placing the booking.'
                     ),
                SizedBox(height: size10 * 0.7,),

              ],
            ),
          ),
          SizedBox(height: size10* 2.5 ,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('If the slots of your preferred professionals are not available, please proceed with placing '
                'the booking and we will try to assign you the best professional available. All our professionals are trained'
                'to deliver a high quality experience.'
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
