
import 'package:flutter/material.dart';

import '../../common/constants.dart';
import '../Payment_Options/Card_Number_Form.dart';

class ArticleHelpful extends StatefulWidget {
  const ArticleHelpful({super.key});

  @override
  State<ArticleHelpful> createState() => _ArticleHelpfulState();
}

class _ArticleHelpfulState extends State<ArticleHelpful> {
  String displayText = 'Was this article helpful?';
  void changeText() {
    setState(() {
      displayText = 'Thank you for the feedback';
    });
  }

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size10),
      child: Row(
        children: [
          Text(
            displayText,
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    //enableDrag: false,
                    //isDismissible: true,
                    isScrollControlled: true,
                    backgroundColor: Colors.black12,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    )),
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 2,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(right: size10),
                                    child: Container(
                                      height: size10 * 2.3,
                                      width: size10 * 2.3,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.close,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size10 * 1.4,
                                ),
                                Improve(),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              icon: Icon(
                Icons.thumb_down_alt_outlined,
                color: Colors.grey.shade500,
              )),
          SizedBox(
            width: size10 * 1,
          ),
          IconButton(
              onPressed: () {
                 changeText();
              },
              icon: Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.grey.shade500,
              )),
        ],
      ),
    );
  }
}


class Improve extends StatefulWidget {
  const Improve({super.key});

  @override
  State<Improve> createState() => _ImproveState();
}

class _ImproveState extends State<Improve> {


  int _selectedRadio = -1;

  void _handleRadioValueChange(int value) {
    setState(() {
      _selectedRadio = value;
    });
  }

  Widget _buildCustomRadioButton(int index) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black45,
          width: 2.0,
        ),
      ),
      child: Container(
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
          color: _selectedRadio == index ? Colors.black : Colors.white,
        ),
      ),
    );
  }
  List<String> button_texts = [
    'This information is hard to understand',
    'My issue is still not solved',
    'This is not what I was looking for',
    'Others'
  ];



  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    Widget _feedbackSheet(){
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(

          decoration: const BoxDecoration(

              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height:
                  MediaQuery.of(context).size.height / 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: size10),
                    child: Container(
                      height: size10 * 2.3,
                      width: size10 * 2.3,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.close,
                          color: black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size10 * 1.4,
                ),
                Container(
                  height: size10 * 12.5,
                  decoration: const BoxDecoration(
                      color: Colors.white ,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size10 * 1.4,
                      ),

                      Container(
                        height: size10 * 3.1,
                        width: size10 * 3.1,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Icon(Icons.check,color: white,),
                        ),
                      ),

                      SizedBox(height: size10 * 1.2,),
                      const Text('Thank you for your feedback',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      SizedBox(height: size10 * 0.5,),
                      Text('Your feedback helps us improve our services and offerings for all our users',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey.shade600,height: 1.4),),
                      SizedBox(
                        height: size10 * 1.4,
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }



    return Container(
      height: size10 * 25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size10 * 1.2, vertical: size10 * 1.5),
            child: const Text('How can we improve?',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
          ),

          Container(
            height: size10 * 14,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
                  child: Column(
                    children: [
                      SizedBox(height: size10 * 1.4,),
                      Row(
                        children: [
                          GestureDetector(
                             onTap: () {
                                _handleRadioValueChange(index);
                              },
                              child: _buildCustomRadioButton(index),

                          ),
                          SizedBox(width: size10,),
                          GestureDetector(

                            child: SizedBox(width: size10 * 20,
                              child:Text(  button_texts[index],
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                              ), ),
                            onTap: () {
                              _handleRadioValueChange(index);
                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            color: Colors.grey.shade300,
            width: double.infinity,
            height: 2,
          ),
          SizedBox(height: size10 * 0.6,),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  //enableDrag: false,
                  //isDismissible: true,
                  isScrollControlled: true,
                  backgroundColor: Colors.black12,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      )),
                  builder: (context) => _feedbackSheet() );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size10 * 1.2),
              child: Container(
                height: size10 * 3.7,
                width:  size10 * 25,
                decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Text('Submit feedback',style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 15),),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
