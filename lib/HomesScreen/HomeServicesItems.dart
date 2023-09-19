import 'package:flutter/material.dart';

import '../common/constants.dart';



class HomeServicesItemContainer1 extends StatelessWidget {
  const HomeServicesItemContainer1({super.key});

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


