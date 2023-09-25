import 'package:fixmygiz/profilescreen/Help_Center/Account/Change_Number/Change_Number.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Account/Saved_Address/Saved_Address.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Account/Saved_Payment_Details/Saved_Payment_Details.dart';
import 'package:flutter/material.dart';
import '../../../widgets/separator.dart';
import 'Change_Email/Change_Email.dart';


class Accounts extends StatefulWidget {
  const Accounts({super.key});

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var size10 = MediaQuery.of(context).size.height / 55;


    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
            child: Text('Account',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
         UnPaddedSmallSeparator(),
          Container(
            height: size.height* 0.56,
            //0.556

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size10 * 0.5,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangeNumber(),));
                  },
                  child: ListTile(
                    title: Transform.translate( offset: Offset(-size10 * 0.1  , 0),child: Text('I want to change my phone number')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                  ),
                ),
                const PaddedSmallSeparator(),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SavedAddress() , ));
                  },
                  child: ListTile(
                    title: Transform.translate( offset: Offset(-size10 * 0.1  , 0),child: Text('Where can I check my saved addresses?')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                  ),
                ),
                const PaddedSmallSeparator(),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ChangeEmail()  , ));
                  },
                  child: ListTile(
                    title: Transform.translate( offset: Offset(-size10 * 0.1  , 0),child: Text('I want to change my email address')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                  ),
                ),
                const PaddedSmallSeparator(),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SavedPaymentDetails()  , ));
                  },
                  child: ListTile(
                    title: Transform.translate( offset: Offset(-size10 * 0.1  , 0),child: Text('Where can I see my saved payment details?')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                  ),
                ),



              ],
            ),
          )
        ],
      ),
    );;
  }
}
