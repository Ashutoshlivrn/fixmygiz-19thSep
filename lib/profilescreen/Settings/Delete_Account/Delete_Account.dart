import 'package:flutter/material.dart';

import '../../../common/constants.dart';


class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {

  Widget dotContainer(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        height: 4,
        width: 4,
        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
      ),
    );
  }

  Widget thisText(String text){
    return Text(text, style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 15, height: 1.2 ),);
  }


  
  @override
  Widget build(BuildContext context) {

    var size10 = MediaQuery.of(context).size.height / 55;
    Widget belowText(String text){
      return Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dotContainer(),
             SizedBox(width: size10 * 1.2,),
            SizedBox(width: size10 * 22 ,child: Text(text,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 15, height: 1.2 ) ,) ,),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: size10 * 3  ,),
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: const Icon(Icons.arrow_back_rounded)  ),
          SizedBox(height: size10 * 2 ,),
          Padding(
            padding:  EdgeInsets.only(left: size10  ),
            child: Text('Delete Account',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
          ),
            SizedBox(height: size10 * 1.1 ,),
          belowText( 'You\'ll no longer be able to access your saved professional' ),
          SizedBox(height: size10 * 1.1 ,),
          belowText('Your customer rating will be reset'),
          SizedBox(height: size10 * 1.1 ,),
          belowText('All your membership will be cancelled'),
          SizedBox(height: size10 * 1.1 ,),
          belowText('You\'ll not be able to claim under any active warranty or insurance'),
          SizedBox(height: size10 * 1.1 ,),
          belowText('The changes are irreversible'),

          SizedBox(height: size10 * 24,),
          Container(
            color: primarycolor,
            width: double.infinity,
            height: 3,
          ),
          SizedBox(height: 5,),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: size10 * 0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size10 * 12.5,
              height: size10 * 3.7,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(child: Text('Delete account',style: TextStyle(color: Colors.red.shade900,fontWeight: FontWeight.w600,fontSize: 15),),),
            ),
             // Add some space between the containers
            Container(
              width: size10 * 12.5,
              height:  size10 * 3.7  ,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
                child: Center(child: Text('Download data',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),),)
            ),
          ],
        ),
      ),




        ],
      ),
    );
  }
}
