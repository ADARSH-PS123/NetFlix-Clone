import 'package:bordered_text/bordered_text.dart';
import 'package:flix/core/colors.dart';

import 'package:flutter/material.dart';


import '../../downloads/widgets/screen_downloads.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        children: [
          Row(
            children: List.generate(
                10,
                (index) => Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 35,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image: NetworkImage(posters[2]),
                                      fit: BoxFit.fill)),
                              height: size.height * .2,
                              width: size.width * .26,
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: -16,
                          left: -2,
                          child: BorderedText(
                            strokeWidth: 3,
                            strokeColor: Colors.white,
                            child: Text(
                              '${(index + 1)}',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: backgroundColor,
                                  fontSize: 110,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )),
          )
        ],
      ),
    );
  }
}
