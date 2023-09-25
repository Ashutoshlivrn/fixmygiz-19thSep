import 'package:fixmygiz/profilescreen/Help_Center/Warranty/Service_Under_Warranty/Service_Under_Warranty.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Warranty/Services_Covered/Services_Covered.dart';
import 'package:flutter/material.dart';

import '../../../widgets/separator.dart';

class Warranty extends StatefulWidget {
  const Warranty({super.key});

  @override
  State<Warranty> createState() => _WarrantyState();
}

class _WarrantyState extends State<Warranty> {
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
               child: Text('Warranty',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
             ),
             SizedBox(height: size10* 1.1 ,),
             UnPaddedSmallSeparator(),

             SizedBox(height: size10* 1.1 ,),
             InkWell(
               onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ServicesCovered() ,));
               },
               child: ListTile(
                 title: Transform.translate( offset: Offset( 0 , 0),child: Text('Which services are covered under Fix My Giz warranty?',
                   style: TextStyle(height: 1.4 , fontSize: 15 )  ,)),
                 trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
               ),
             ),
             SizedBox(height: size10* 0.8 ,),
             SmallSeparator(),


             SizedBox(height: size10* 1.1 ,),
             InkWell(
               onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ServiceUnderWarranty() ,));
               },
               child: ListTile(
                 title: Transform.translate( offset: Offset( 0 , 0),child: Text('Do I have to pay for the service under warranty?',
                   style: TextStyle(height: 1.4 , fontSize: 15 )  ,)),
                 trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
               ),
             ),
             SizedBox(height: size10* 0.8 ,),
             SmallSeparator(),


           ],
         ),
    );
  }
}
