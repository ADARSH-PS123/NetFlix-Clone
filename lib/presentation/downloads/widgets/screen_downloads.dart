import 'dart:math';

import 'package:flix/core/constants.dart';
import 'package:flix/presentation/widgets_common/topbar.dart';
import 'package:flutter/material.dart';

final posters = [
  'https://www.kerala9.com/wp-content/uploads/2022/04/nna-thaan-case-kodu-movie-poster.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTevST-wklZlPCowJgEMJTG0nh2EQvj1MiwNA&usqp=CAU',
  'https://images.complex.com/complex/image/upload/c_fill,dpr_auto,f_auto,fl_lossy,g_face,q_auto,w_1280/wjnhpz3osrai5aningjl.jpg',
  'https://www.indiewire.com/wp-content/uploads/2019/12/JokerPoster1200_5ca3c435318d42.29270548.jpg?w=800',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTufhctoruHUj_cgRDRjvNIDPyOK3uICas50g&usqp=CAU'
];

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TopBar(prefix:const Text(
          "Downloads",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  height,
                  Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 4),
                        child: Text(
                          "Smart Downloads",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ],
                  ),
                  height,
                  height,
                  const Center(
                    child: Text(
                      "Introducing Downloads for You",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  height,
                  const Center(
                    child: Text(
                        style: TextStyle(color: Colors.grey),
                        "We'll download a personosed section of\n   movies and shows for you, so there's\n    always something to watch on your\n                             device"),
                  ),
                  height,
                  Section2(),Section3()
                ],
              )
            ],
          )),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          radius: size.width * .25,
        ),
        Padding(
          padding: EdgeInsets.only(top: 55, right: size.width * .3),
          child: Transform.rotate(
            angle: -pi * 23 / 180,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: NetworkImage(posters[1]), fit: BoxFit.fill)),
              height: size.width * .32,
              width: size.width * .25,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 55, left: size.width * 0.3),
          child: Transform.rotate(
            angle: pi * 20 / 180,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: NetworkImage(posters[2]), fit: BoxFit.fill)),
              height: size.width * .32,
              width: size.width * .25,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 32.2, left: 0),
          child: Transform.rotate(
            angle: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: NetworkImage(posters[0]), fit: BoxFit.fill)),
              height: size.width * .39,
              width: size.width * .256,
            ),
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Column(
      children: [
       SizedBox(height:70,),
        MaterialButton(minWidth: size.width*.8,
          onPressed: () {},
          child: Text("Set Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          color: Colors.indigo[500],
        ),
         MaterialButton(minWidth: size.width*.7,
          onPressed: () {},
          child: Text("See What You Can Download",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          color: Colors.white,
        )
      ],
    );
  }
}
