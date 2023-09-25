import 'package:fixmygiz/common/constants.dart';
import 'package:flutter/material.dart';

class My_Rating extends StatefulWidget {
  const My_Rating({super.key});

  @override
  State<My_Rating> createState() => _My_RatingState();
}

class _My_RatingState extends State<My_Rating> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:  IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back_rounded,color: black,),) ,
          backgroundColor: white,
          bottomOpacity: 10,

        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 120,
                color: Colors.blue.shade50,
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 60,
                        width: 220,
                        child: const Text('You currently have no ratings',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                      ),
                      const Spacer(),
                      Icon(Icons.star,size: 60,color: Colors.yellow.shade600,),
                      const SizedBox(width: 20,)
                    ],
                  ),
                ),
              ),
               SizedBox(height: size10 *2.1,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child:  Text('Inroducing customer ratings', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),  ),
              ),
               SizedBox(height: size10*0.7,),   //size 15
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 14.0),
                 child: Text('Just like you rate fix my giz professionals for the overall quality of the service, they also rate you on a scale of 1 to 5. You aggregate rating is calculated after you have received ratings in at least 3 services.',
                   style:  TextStyle(height: 1.5,color: Colors.grey.shade600,fontSize: 15),),
               ),
              SizedBox(height: size10*1.4,),   //size 15
              const Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 14.0),
                 child: Text('How can I be a 5-star customer', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),  ),
               ),
               SizedBox(height: size10/2,),     //size 5
               Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text('Did you know that nearly 80% of Fix my Giz customers are 5-star rated. If you also want that coveted rating, here are few kind gestures.',style:  TextStyle(height: 1.5,color: Colors.grey.shade600,fontSize: 15)),
              ),
              SizedBox(height: size10*1.4,),   //size 15



              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Container(
                    height: size10 * 9,
                    width:  size10 * 9,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/icons/fist_bump.png'))),
                ),
              ),
              //SizedBox(height: size10* 1.3,),   //size 10
               const Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 14.0),
                 child: Text('Empathise', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),  ),
               ),
              SizedBox(height: size10/2,),     //size 5,
              Padding(
                   padding: EdgeInsets.symmetric(horizontal: 14.0),
                 child: Text('Show them you care by offering water, it\'ll help raise their spirit and energy levels.',style:  TextStyle(height: 1.5,color: Colors.grey.shade600,fontSize: 15)),
               ),
              SizedBox(height: size10*1.4,),   //size 15


                Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 0.0),
                 child:   Container(
                   height: size10 * 9,
                   width:  size10 * 9,
                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/icons/support_image.jpg'))),
                 ) ,
               ),
               const Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 14.0),
                 child: Text('Support', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),  ),
               ),
              SizedBox(height: size10/2,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Text('Provide access to the washroom (if required); they might have been on the go for a while!',style:  TextStyle(height: 1.5,color: Colors.grey.shade600,fontSize: 15)),
              ),


              SizedBox(height: size10*1.4,),   //size 15
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: size10 * 8,
                  width:  size10 * 8,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/icons/respect_icon.jpg'))),
                ),
              ),
               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 14.0),
                 child: Text('Respect', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),  ),
               ),
              SizedBox(height: size10/2,),// size 5
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Text('Treat professionals the way you\'d expect to be treated.',style:  TextStyle(height: 1.5,color: Colors.grey.shade600,fontSize: 15)),
              ),
              SizedBox(height: size10*1.4,),   //size 15

               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 14.0),
                 child: Text('How is customer rating calculated', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),  ),
               ),
              SizedBox(height: size10/2,),  //size 5
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Text('Your aggregate rating is a simple average of all the ratings you\'ve received from fix my giz professionals in the past. These individual ratings are anonymous, and so we won\'t be visible to you or the professional. ',style:  TextStyle(height: 1.5,color: Colors.grey.shade600,fontSize: 15)),
              ),
              SizedBox(height: size10*1.4,),   //size 15



            ],
          ),
        ),
      ),
    );
  }
}
