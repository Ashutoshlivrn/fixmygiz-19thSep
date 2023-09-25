
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import 'Book_Preferred_Professional/Book_Preferred_Professionals.dart';
import 'Cancellation_Fee/Cancellation_Fee.dart';
import 'Minimal_Value/Minimal_Value.dart';
import 'Place_Booking/Place_Booking.dart';
import 'Re_Book/ReBooking.dart';
import 'What_is_FixMyGiz/What_Is_FMG.dart';


class GettingStartedWithFixMyGiz extends StatefulWidget {
  const GettingStartedWithFixMyGiz({super.key});

  @override
  State<GettingStartedWithFixMyGiz> createState() => _GettingStartedWithFixMyGizState();
}

class _GettingStartedWithFixMyGizState extends State<GettingStartedWithFixMyGiz> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size10 * 2,),
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon:  Icon(Icons.arrow_back_rounded)),
          SizedBox(height: size10 * 2.2,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Getting started with Fix My Giz',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.2 ,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 1.7 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('About us',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => WhatIsFMG() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('What is Fix My Giz?')),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10 ,),
          UnPaddedSmallSeparator(),
          UnPaddedSmallSeparator(),
          UnPaddedSmallSeparator(),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 1.6 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Boookings',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
          ),



          SizedBox(height: size10* 1.4 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlaceBooking() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('How to place a booking?')),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),

          SmallSeparator(),


          SizedBox(height: size10* 0.5 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ReBooking() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('Can I re-book the same professional if I like the serivce?',
                style: TextStyle(height: 1.4)  ,)),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10* 0.4 ,),
          SmallSeparator(),

          SizedBox(height: size10 * 0.1 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BookPreferredProfessionals() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('How to book my preferred professional?')),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SmallSeparator(),


          SizedBox(height: size10 * 0.1 ,),
          SizedBox(height: size10 * 0.5 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MinimalValue() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: const Text('Do I have to order a minimum value of services '
                  'before I can place the booking?',
                  style: TextStyle(height: 1.4))),
              trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10 * 0.7 ,),
          SmallSeparator(),




          SizedBox(height: size10 * 0.6 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cancellation_Fee()  ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('Does Fix My Giz charge any cancellation fee?',style: TextStyle(height: 1.4))),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),








        ],
      ),
    );
  }
}
