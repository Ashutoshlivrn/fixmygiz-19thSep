import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../common/constants.dart';

//items container in 2nd bottom navigation bar
class itemsContainer extends StatelessWidget {
  itemsContainer({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            width: size.width *0.28,
            padding: const EdgeInsets.all(10),
            color: primarycolor,
            child: Image.asset('images/icons/womensalon.jpg',height: 50,),
          ),
        ),
        SizedBox(
          width: size.width *0.28,
          height: 50,
          child:  Center(
            child: Text(text,textAlign: TextAlign.center),
          ),
        )
      ],
    );
  }
}

class itemsContainer1 extends StatelessWidget {
  const itemsContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: primarycolor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 40,
                    width: 90,
                    child: Text('Saloon for Kids & Men'),
                  ),
                  const Spacer(),
                  Image.asset('images/icons/womensalon.jpg',height: 50,),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: primarycolor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 40,
                    width: 90,
                    child: Text('Massage for Men'),
                  ),
                  const Spacer(),
                  Image.asset('images/icons/womensalon.jpg',height: 50,),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}

class itemsContainer2 extends StatelessWidget {
  const itemsContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 12,),
      Column(
      children: [
      ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Container(
      width: size.width *0.29,
      height: size.height *0.16,
      padding: const EdgeInsets.all(10),
      color: primarycolor,
      child: Image.asset('images/icons/womensalon.jpg',height: 50,),
      ),
      ),
      SizedBox(
      width: size.width *0.28,
      height: 40,
      child:  const Center(
      child: Text('Laser hair reduction',),
      ),
      )
      ],
      ),
      const SizedBox(width: 12,),
      Column(
      children: [
      ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Container(
      width: size.width *0.29,
      height: size.height *0.16,
      padding: const EdgeInsets.all(10),
      color: primarycolor,
      child: Image.asset('images/icons/womensalon.jpg',height: 50,),
      ),
      ),
       SizedBox(
      width: size.width *0.28,
      height: 40,
      child:  const Center(
      child: Text('Ayurvedic spa',),
      ),
      )
      ],
      ),
          const SizedBox(width: 12,),
          Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: size.width *0.29,
                  height: size.height *0.16,
                  padding: const EdgeInsets.all(10),
                  color: primarycolor,
                  child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                ),
              ),
              SizedBox(
                width: size.width *0.28,
                height: 40,
                child:  const Center(
                  child: Text('Nail studio for women',),
                ),
              )
            ],
          ),
          const SizedBox(width: 12,),
          Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: size.width *0.29,
                  height: size.height *0.16,
                  padding: const EdgeInsets.all(10),
                  color: primarycolor,
                  child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                ),
              ),
              SizedBox(
                width: size.width *0.28,
                height: 40,
                child:  const Center(
                  child: Text('Hair studio for women',),
                ),
              )
            ],
          ),
          const SizedBox(width: 12,),

        ],
      ),
    );

  }
}

class itemsContainer3 extends StatelessWidget {
  const itemsContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: size.width * 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Container(
                        width: size.width *0.33,
                        height: size.height *0.18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/saloonforwomen.jpg'),fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('Haircut for Women'),
                    const Text('☆ 4.82(1.1m)'),
                    const Text('₹599')
                  ],
                ),
              ),
            );


          }),
    );
  }
}

class itemsContainer4 extends StatefulWidget {
  const itemsContainer4({super.key});

  @override
  State<itemsContainer4> createState() => _itemsContainer4State();
}
class _itemsContainer4State extends State<itemsContainer4> {
  List<String> itemsName = ['Waxing','Manicure','Pedicure','Threading & face wax','Facial & cleanup','Bleach & detan'];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 168,
        childAspectRatio: 1.5, // Adjust the aspect ratio as needed
      ),
      itemCount: 6, // 2 rows with 2 containers in each row
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10,bottom: 13,top: 10),
          child: Container(
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(10) , border: Border.all(color: Colors.grey.shade200, width: 1)   ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemsName[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 10,),
                  Expanded(child: Image.asset('images/icons/hair.png')),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


class itemsContainer5 extends StatefulWidget {
  const itemsContainer5({super.key});

  @override
  State<itemsContainer5> createState() => _itemsContainer5State();
}
class _itemsContainer5State extends State<itemsContainer5> {
  List<String> itemsName = [ 'Haircut & styling' ,'Hair Spa and Cut','Roots: Colour & Application','Hair Trim','BlowDry: In Curl/ Out Curl','Roots: Only Application','BlowDry: Straight & Smooth','Gel extensions/ overlays removal'  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 150,
        childAspectRatio: 1.5, // Adjust the aspect ratio as needed
      ),
      itemCount: 8, // 2 rows with 2 containers in each row
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10,bottom: 13,top: 10),
          child: Container(
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(10) ,
                   ),
            child: SizedBox(
              //width: size.width * 0.33,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      width: size.width,
                      height: size.height *0.18,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/saloonforwomen.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(itemsName[index],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                  const SizedBox(height: 2,),
                  const Text('☆ 4.82(1.1m)'),
                  const SizedBox(height: 2,),
                  const Text('₹599')
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


class itemsContainer6 extends StatefulWidget {
  const itemsContainer6({super.key});

  @override
  State<itemsContainer6> createState() => _itemsContainer6State();
}
class _itemsContainer6State extends State<itemsContainer6> {
  List<String> itemsName = ['Haircut','Manicure & pedicure','Face care','Hair color','Beard grooming','Massage therapy'];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 168,
        childAspectRatio: 1.5, // Adjust the aspect ratio as needed
      ),
      itemCount: 6, // 2 rows with 2 containers in each row
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10,bottom: 13,top: 10),
          child: Container(
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(10) , border: Border.all(color: Colors.grey.shade200, width: 1)   ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(itemsName[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ),
                const SizedBox(height: 10,),
                Expanded(child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/saloonformen.jpg',fit: BoxFit.cover,))),

              ],
            ),
          ),
        );
      },
    );;
  }
}



class itemsContainer7 extends StatefulWidget {
  const itemsContainer7({super.key});

  @override
  State<itemsContainer7> createState() => _itemsContainer7State();
}
class _itemsContainer7State extends State<itemsContainer7> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> itemsName = ['Stress relief','Pain relief','Sports therapy'];
    return SizedBox(
      height: size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, int index){
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,bottom: 13,top: 10),
              child: Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10) , border: Border.all(color: Colors.grey.shade200, width: 1)   ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(itemsName[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    const SizedBox(height: 10,),
                    Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('images/saloonformen.jpg',fit: BoxFit.cover,))),

                  ],
                ),
              ),
            );


          }),
    );
  }
}




class imageSlider extends StatelessWidget {
  const imageSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/slider1.jpg'),
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
              image: AssetImage('images/slider2.jpg'),
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
    );
  }
}


