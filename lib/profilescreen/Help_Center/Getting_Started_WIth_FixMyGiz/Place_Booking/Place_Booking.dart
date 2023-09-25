import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class PlaceBooking extends StatefulWidget {
  const PlaceBooking({super.key});

  @override
  State<PlaceBooking> createState() => _PlaceBookingState();
}

class _PlaceBookingState extends State<PlaceBooking> {

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
            child: Text('How to place a booking?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('You can follow the steps below to book a service on our app:'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),

          Padding(
            padding: EdgeInsets.only(left: size10 * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                points('1.', 'Search for the service on the homescreen for the category you are looking for.'),
                SizedBox(height: size10 * 0.7,),

                points('2.', 'Open the category and follow the instructions as you proceed ahead.' ),
                SizedBox(height: size10 * 0.7,),

                points('3.', 'Once you have booked a service, wait for the professional to get '
                    'assigned. Professionals will be assigned 1 hour prior to your booking time.' ),
                SizedBox(height: size10 * 0.7,),

                points('4.', 'Assigned professional will reach your address at the time of the booking and will '
                    'deliver the service.')

              ],
            ),
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
