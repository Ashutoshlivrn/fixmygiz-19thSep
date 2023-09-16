import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixmygiz/widgets/subtilte.dart';
import 'package:fixmygiz/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var serviceTitles = [
      'Beauty & Saloon',
      'Cleaing Services',
      'Applliance Services',
      'Interior Services',
      'Dry Cleaning'
    ];
    var usedServicesImages =[
      'images/icons/hair.png',
      'images/icons/vacuum.png',
      'images/icons/air-conditioner-2.png',
      'images/icons/interior-design.png',
      'images/icons/washing-machine.png',
    ];
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.black87,
                //  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(

                    children: [
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Text('Address',style: TextStyle(color: Colors.white),),
                          ),

                          Text('               Near colony abc city street......',style: TextStyle(color: Colors.white),)
                        ],),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: size.width * 0.8,
                            height: 50,
                            child: const CupertinoSearchTextField(
                              suffixIcon: Icon(Icons.search,color: Colors.white,),
                              itemColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                              width: 50,
                              child: ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                                  child:  Icon(Icons.notifications,color: Colors.white,)))
                        ],
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: [

                    //1st Image of Slider
                    Container(

                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/plumbingservices.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/housecleaning.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),


                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 0.95,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                  ),
                ),
                const Gap(10),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TitleTextWidget2(title: 'Most Used Services'),
                        Subtitle2(subtile: 'view all'),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 100,
                  child: GridView.builder(

                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 5),

                      itemCount: 5,
                      itemBuilder: (context, int index){
                    return Column(
                      children: [Image.asset(usedServicesImages[index],height: 45,),
                        Text(serviceTitles[index],textAlign: TextAlign.center,),

                      ],
                    );
                  }),
                ),
                Gap(5),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TitleTextWidget2(title: 'Home Services'),
                        Subtitle2(subtile: 'view all'),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 100,
                  child: GridView.builder(

                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 5),

                      itemCount: 5,
                      itemBuilder: (context, int index){
                        return Column(
                          children: [Image.asset(usedServicesImages[index],height: 45,),
                            Text(serviceTitles[index],textAlign: TextAlign.center,),
                          ],
                        );
                      }),
                ),
                Gap(10),
                Image.asset('images/add2.png',fit: BoxFit.cover,),

                Gap(10),

                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TitleTextWidget2(title: 'Top Category Launches'),
                        Subtitle2(subtile: 'view all'),
                      ],
                    ),
                  ),
                ),
                
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: size.width * 0.45,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),

                                child: Image.asset('images/plumbercategory.jpg')),
                            Text('Plumbers',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),

                                child: Image.asset('images/electriciancategory.jpg')),
                            Text('Electrician',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TitleTextWidget2(title: 'Saloon & Spa Services'),
                      Subtitle2(subtile: 'view all'),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.45,
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),

                              child: Image.asset('images/saloonformen.jpg')),
                          Text('Saloon For Men',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.45,
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),

                              child: Image.asset('images/saloonforwomen.jpg')),
                          Text('Saloon For Women',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.45,
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),

                              child: Image.asset('images/saloonforkids.jpg')),
                          Text('Saloon For Kids',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.45,
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),

                              child: Image.asset('images/young-woman-mask-face-relaxing-spa-salon.jpg')),
                          Text('Spa And Massage Services',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),






              ],

            ),
          ),
        ),
      ),
    );

  }
}
