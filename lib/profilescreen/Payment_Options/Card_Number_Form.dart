

import 'package:fixmygiz/common/constants.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

class CardNumberForm extends StatefulWidget {
  @override
  _CardNumberFormState createState() => _CardNumberFormState();
}

class _CardNumberFormState extends State<CardNumberForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _cardNumber;
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool checkbox = false;
  bool save = false;

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Form(
      key: _formKey,
      child: Container(
     height: size10 * 25.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10) )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: size10*1.2,vertical: size10*1.5),
              child: Text('Add new card',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17)),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: size10 ),
              child: TextFormField(

                onTap: () {
                  setState(() {
                    _isFocused = true;
                  });
                },
                onTapOutside: (event) {
                  setState(() {
                    _isFocused = false;
                  });
                },
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a card number';
                  }
                  if (value.length < 16) {
                    return 'Please enter a valid card number';
                  }
                  if(value.length >16){
                    return 'only 16 digits allowed';
                  }
                  return null;
                },
                cursorColor: black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: size10 ),
                  hintText: 'Card Number',
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.purple, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: _isFocused ? Colors.grey : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: size10*1.4,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: size10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          _isFocused = true;
                        });
                      },
                      onTapOutside: (event) {
                        setState(() {
                          _isFocused = false;
                        });
                      },
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter MM/YY';
                        }
                        if (value.length < 4) {
                          return 'Invalid date.';
                        }
                        if (value.length > 4) {
                          return 'Invalid date.';
                        }
                        return null;
                      },

                      cursorColor: black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: size10),
                        hintText: 'MM/YY',
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: _isFocused ? Colors.grey : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size10,
                  ),
                  Expanded(
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          _isFocused = true;
                        });
                      },
                      onTapOutside: (event) {
                        setState(() {
                          _isFocused = false;
                        });
                      },
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter CVV';
                        }
                        if (value.length < 3) {
                          return 'Incorrect CVV';
                        }
                        if(value.length >3){
                          return 'only 3 digits allowed';
                        }
                        return null;
                      },
                      cursorColor: black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: size10),
                        hintText: 'CVV',
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: _isFocused ? Colors.grey : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

             SizedBox(height: size10 *1.5,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: size10 * 1.4),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox = !checkbox;
                      });
                    },
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: size10*1.4,
                      width: size10*1.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: checkbox ? Colors.green : Colors.grey.shade700,
                          width: 2.0,
                        ),
                      ),
                      child: checkbox
                          ? const Icon(
                              Icons.check,
                              size: 15.0,
                              color: Colors.green,
                            )
                          : Container(
                              height: size10*1.4,
                              width: size10*1.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              )),
                    ),
                  ),
                  SizedBox(
                    width: size10*1.2,
                  ),
                  SizedBox(
                      width: size10 * 20,
                      child: Text(
                          'Save the card details securely for future use except CVV',
                       style: TextStyle(color: Colors.grey.shade700 ),
                      ))
                ],
              ),
            ),
            SizedBox(height: size10 * 2.1,),
            Container(
              color: Colors.grey.shade200,
              width: double.infinity,
              height: 2,
            ),
            Padding(
              padding:  EdgeInsets.all(size10 * 0.8),
              child: Row(
                children: [
                  SizedBox(width: size10,),
                  Text('Rs 1',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        if(_formKey.currentState!.validate() ){
                          setState(() {
                            save = true;
                          });
                        }
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        color: save? Colors.grey.shade500: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      height: size10 * 3.7,
                      width: size10* 13,

                      child: Padding(
                        padding: EdgeInsets.all(size10),
                        child: const Center(child: Text('Save and proceed',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
                      ),
                    ),
                  ),
                   SizedBox(width: size10,),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
