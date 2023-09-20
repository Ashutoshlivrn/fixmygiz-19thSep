import 'package:fixmygiz/common/constants.dart';
import 'package:flutter/material.dart';


class Scheduled_Bookings extends StatefulWidget {
  const Scheduled_Bookings({super.key});

  @override
  State<Scheduled_Bookings> createState() => _Scheduled_BookingsState();
}

class _Scheduled_BookingsState extends State<Scheduled_Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded,color: black,),onPressed: () {
              Navigator.of(context).pop();
              },),
        title: Text('Scheduled Bookings',style: TextStyle(color: black),),
        elevation: 1,
      ),
    );
  }
}
