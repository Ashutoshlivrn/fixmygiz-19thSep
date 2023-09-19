import 'package:fixmygiz/common/constants.dart';
import 'package:flutter/material.dart';

class My_Bookings extends StatefulWidget {
  const My_Bookings({super.key});

  @override
  State<My_Bookings> createState() => _My_BookingsState();
}

class _My_BookingsState extends State<My_Bookings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 60,
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300, // Border color
                  width: 1.0, // Border width
                ),
              ),
          ),
          child: Row(
            children: [
              IconButton(onPressed: () {
                Navigator.of(context).pop();
              }, icon: Icon(Icons.arrow_back_rounded,color: black,)   ),
              const SizedBox(width: 15,),
              const Text('Bookings & plans',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.grey.shade300, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                height: 40,
                width: 60,
                child: Center(
                  child: Text('Help',style: TextStyle(color: Colors.purple),),
                ),
              )

            ],
          ),
        ),





      ),
    );
  }
}
